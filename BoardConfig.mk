include vendor/lge/i_vzw/BoardConfigVendor.mk

# Partitions (XXX: check these)
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 422576128
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

# Kernel
BOARD_USE_PREBUILT_KERNEL := false

ifeq ($(BOARD_USE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL_DIR := device/lge/i_vzw/kernels/q
else
# Build kernel from source
TARGET_KERNEL_SOURCE := kernel/lge/iproj
TARGET_KERNEL_CONFIG := cyanogenmod_vs920_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
endif

BOARD_KERNEL_CMDLINE := androidboot.hardware=iproj
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x40200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01800000

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/i_vzw/bluetooth

include device/lge/iproj/BoardConfig.mk

BOARD_CDMA_NETWORK := true

# Device Assert.. ics, cwm, gb
TARGET_OTA_ASSERT_DEVICE := i_vzw,vs920,VS920

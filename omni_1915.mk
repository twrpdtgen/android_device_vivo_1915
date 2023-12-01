#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from 1915 device
$(call inherit-product, device/vivo/1915/device.mk)

PRODUCT_DEVICE := 1915
PRODUCT_NAME := omni_1915
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1915
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k68v1_64-user 11 RP1A.200720.012 eng.compil.20210831.122723 release-keys"

BUILD_FINGERPRINT := vivo/1915/1915:11/RP1A.200720.012/compiler0831121901:user/release-keys

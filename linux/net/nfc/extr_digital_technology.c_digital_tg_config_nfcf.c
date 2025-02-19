
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_digital_dev {int dummy; } ;


 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_CONFIG_RF_TECH ;
 int NFC_DIGITAL_FRAMING_NFCF_NFC_DEP ;
 int digital_tg_configure_hw (struct nfc_digital_dev*,int ,int ) ;

__attribute__((used)) static int digital_tg_config_nfcf(struct nfc_digital_dev *ddev, u8 rf_tech)
{
 int rc;

 rc = digital_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_RF_TECH, rf_tech);
 if (rc)
  return rc;

 return digital_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_FRAMING,
           NFC_DIGITAL_FRAMING_NFCF_NFC_DEP);
}

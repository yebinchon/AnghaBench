
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_digital_dev {int curr_rf_tech; int skb_check_crc; int skb_add_crc; } ;


 scalar_t__ DIGITAL_DRV_CAPS_TG_CRC (struct nfc_digital_dev*) ;



 int digital_skb_add_crc_a ;
 int digital_skb_add_crc_f ;
 int digital_skb_add_crc_none ;
 int digital_skb_check_crc_a ;
 int digital_skb_check_crc_f ;
 int digital_skb_check_crc_none ;

__attribute__((used)) static void digital_tg_set_rf_tech(struct nfc_digital_dev *ddev, u8 rf_tech)
{
 ddev->curr_rf_tech = rf_tech;

 ddev->skb_add_crc = digital_skb_add_crc_none;
 ddev->skb_check_crc = digital_skb_check_crc_none;

 if (DIGITAL_DRV_CAPS_TG_CRC(ddev))
  return;

 switch (ddev->curr_rf_tech) {
 case 130:
  ddev->skb_add_crc = digital_skb_add_crc_a;
  ddev->skb_check_crc = digital_skb_check_crc_a;
  break;

 case 129:
 case 128:
  ddev->skb_add_crc = digital_skb_add_crc_f;
  ddev->skb_check_crc = digital_skb_check_crc_f;
  break;

 default:
  break;
 }
}

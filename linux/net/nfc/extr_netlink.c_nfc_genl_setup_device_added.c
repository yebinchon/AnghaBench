
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_dev {int rf_mode; int dev_up; int supported_protocols; int idx; } ;


 int NFC_ATTR_DEVICE_INDEX ;
 int NFC_ATTR_DEVICE_NAME ;
 int NFC_ATTR_DEVICE_POWERED ;
 int NFC_ATTR_PROTOCOLS ;
 int NFC_ATTR_RF_MODE ;
 int nfc_device_name (struct nfc_dev*) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nfc_genl_setup_device_added(struct nfc_dev *dev, struct sk_buff *msg)
{
 if (nla_put_string(msg, NFC_ATTR_DEVICE_NAME, nfc_device_name(dev)) ||
     nla_put_u32(msg, NFC_ATTR_DEVICE_INDEX, dev->idx) ||
     nla_put_u32(msg, NFC_ATTR_PROTOCOLS, dev->supported_protocols) ||
     nla_put_u8(msg, NFC_ATTR_DEVICE_POWERED, dev->dev_up) ||
     nla_put_u8(msg, NFC_ATTR_RF_MODE, dev->rf_mode))
  return -1;
 return 0;
}

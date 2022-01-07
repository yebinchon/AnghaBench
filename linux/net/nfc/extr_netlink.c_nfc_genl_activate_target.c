
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct genl_info {int * attrs; } ;


 int EINVAL ;
 int ENODEV ;
 size_t NFC_ATTR_DEVICE_INDEX ;
 size_t NFC_ATTR_PROTOCOLS ;
 size_t NFC_ATTR_TARGET_INDEX ;
 int NFC_TARGET_MODE_SLEEP ;
 int nfc_activate_target (struct nfc_dev*,int ,int ) ;
 int nfc_deactivate_target (struct nfc_dev*,int ,int ) ;
 struct nfc_dev* nfc_get_device (int ) ;
 int nfc_put_device (struct nfc_dev*) ;
 int nla_get_u32 (int ) ;

__attribute__((used)) static int nfc_genl_activate_target(struct sk_buff *skb, struct genl_info *info)
{
 struct nfc_dev *dev;
 u32 device_idx, target_idx, protocol;
 int rc;

 if (!info->attrs[NFC_ATTR_DEVICE_INDEX] ||
     !info->attrs[NFC_ATTR_TARGET_INDEX] ||
     !info->attrs[NFC_ATTR_PROTOCOLS])
  return -EINVAL;

 device_idx = nla_get_u32(info->attrs[NFC_ATTR_DEVICE_INDEX]);

 dev = nfc_get_device(device_idx);
 if (!dev)
  return -ENODEV;

 target_idx = nla_get_u32(info->attrs[NFC_ATTR_TARGET_INDEX]);
 protocol = nla_get_u32(info->attrs[NFC_ATTR_PROTOCOLS]);

 nfc_deactivate_target(dev, target_idx, NFC_TARGET_MODE_SLEEP);
 rc = nfc_activate_target(dev, target_idx, protocol);

 nfc_put_device(dev);
 return rc;
}

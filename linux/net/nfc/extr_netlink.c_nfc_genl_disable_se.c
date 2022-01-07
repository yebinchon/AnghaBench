
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
 size_t NFC_ATTR_SE_INDEX ;
 int nfc_disable_se (struct nfc_dev*,int ) ;
 struct nfc_dev* nfc_get_device (int ) ;
 int nfc_put_device (struct nfc_dev*) ;
 int nla_get_u32 (int ) ;

__attribute__((used)) static int nfc_genl_disable_se(struct sk_buff *skb, struct genl_info *info)
{
 struct nfc_dev *dev;
 int rc;
 u32 idx, se_idx;

 if (!info->attrs[NFC_ATTR_DEVICE_INDEX] ||
     !info->attrs[NFC_ATTR_SE_INDEX])
  return -EINVAL;

 idx = nla_get_u32(info->attrs[NFC_ATTR_DEVICE_INDEX]);
 se_idx = nla_get_u32(info->attrs[NFC_ATTR_SE_INDEX]);

 dev = nfc_get_device(idx);
 if (!dev)
  return -ENODEV;

 rc = nfc_disable_se(dev, se_idx);

 nfc_put_device(dev);
 return rc;
}

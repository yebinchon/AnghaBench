
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_local {int dummy; } ;
struct nfc_dev {int dev; } ;
struct genl_info {int snd_seq; int snd_portid; int * attrs; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NFC_ATTR_DEVICE_INDEX ;
 size_t NFC_ATTR_FIRMWARE_NAME ;
 int NLMSG_DEFAULT_SIZE ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nfc_genl_send_params (struct sk_buff*,struct nfc_llcp_local*,int ,int ) ;
 struct nfc_dev* nfc_get_device (int ) ;
 struct nfc_llcp_local* nfc_llcp_find_local (struct nfc_dev*) ;
 int nfc_put_device (struct nfc_dev*) ;
 int nla_get_u32 (int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int nfc_genl_llc_get_params(struct sk_buff *skb, struct genl_info *info)
{
 struct nfc_dev *dev;
 struct nfc_llcp_local *local;
 int rc = 0;
 struct sk_buff *msg = ((void*)0);
 u32 idx;

 if (!info->attrs[NFC_ATTR_DEVICE_INDEX] ||
     !info->attrs[NFC_ATTR_FIRMWARE_NAME])
  return -EINVAL;

 idx = nla_get_u32(info->attrs[NFC_ATTR_DEVICE_INDEX]);

 dev = nfc_get_device(idx);
 if (!dev)
  return -ENODEV;

 device_lock(&dev->dev);

 local = nfc_llcp_find_local(dev);
 if (!local) {
  rc = -ENODEV;
  goto exit;
 }

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  rc = -ENOMEM;
  goto exit;
 }

 rc = nfc_genl_send_params(msg, local, info->snd_portid, info->snd_seq);

exit:
 device_unlock(&dev->dev);

 nfc_put_device(dev);

 if (rc < 0) {
  if (msg)
   nlmsg_free(msg);

  return rc;
 }

 return genlmsg_reply(msg, info);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ poll_req_portid; int genl_data_mutex; } ;
struct nfc_dev {TYPE_1__ genl_data; int dev; int polling; } ;
struct genl_info {scalar_t__ snd_portid; int * attrs; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 size_t NFC_ATTR_DEVICE_INDEX ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nfc_dev* nfc_get_device (int ) ;
 int nfc_put_device (struct nfc_dev*) ;
 int nfc_stop_poll (struct nfc_dev*) ;
 int nla_get_u32 (int ) ;

__attribute__((used)) static int nfc_genl_stop_poll(struct sk_buff *skb, struct genl_info *info)
{
 struct nfc_dev *dev;
 int rc;
 u32 idx;

 if (!info->attrs[NFC_ATTR_DEVICE_INDEX])
  return -EINVAL;

 idx = nla_get_u32(info->attrs[NFC_ATTR_DEVICE_INDEX]);

 dev = nfc_get_device(idx);
 if (!dev)
  return -ENODEV;

 device_lock(&dev->dev);

 if (!dev->polling) {
  device_unlock(&dev->dev);
  return -EINVAL;
 }

 device_unlock(&dev->dev);

 mutex_lock(&dev->genl_data.genl_data_mutex);

 if (dev->genl_data.poll_req_portid != info->snd_portid) {
  rc = -EBUSY;
  goto out;
 }

 rc = nfc_stop_poll(dev);
 dev->genl_data.poll_req_portid = 0;

out:
 mutex_unlock(&dev->genl_data.genl_data_mutex);
 nfc_put_device(dev);
 return rc;
}

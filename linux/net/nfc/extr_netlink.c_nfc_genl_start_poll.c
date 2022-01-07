
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int genl_data_mutex; int poll_req_portid; } ;
struct nfc_dev {TYPE_1__ genl_data; } ;
struct genl_info {int snd_portid; scalar_t__* attrs; } ;


 int EINVAL ;
 int ENODEV ;
 size_t NFC_ATTR_DEVICE_INDEX ;
 size_t NFC_ATTR_IM_PROTOCOLS ;
 size_t NFC_ATTR_PROTOCOLS ;
 size_t NFC_ATTR_TM_PROTOCOLS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nfc_dev* nfc_get_device (int ) ;
 int nfc_put_device (struct nfc_dev*) ;
 int nfc_start_poll (struct nfc_dev*,int ,int ) ;
 int nla_get_u32 (scalar_t__) ;
 int pr_debug (char*) ;

__attribute__((used)) static int nfc_genl_start_poll(struct sk_buff *skb, struct genl_info *info)
{
 struct nfc_dev *dev;
 int rc;
 u32 idx;
 u32 im_protocols = 0, tm_protocols = 0;

 pr_debug("Poll start\n");

 if (!info->attrs[NFC_ATTR_DEVICE_INDEX] ||
     ((!info->attrs[NFC_ATTR_IM_PROTOCOLS] &&
       !info->attrs[NFC_ATTR_PROTOCOLS]) &&
       !info->attrs[NFC_ATTR_TM_PROTOCOLS]))
  return -EINVAL;

 idx = nla_get_u32(info->attrs[NFC_ATTR_DEVICE_INDEX]);

 if (info->attrs[NFC_ATTR_TM_PROTOCOLS])
  tm_protocols = nla_get_u32(info->attrs[NFC_ATTR_TM_PROTOCOLS]);

 if (info->attrs[NFC_ATTR_IM_PROTOCOLS])
  im_protocols = nla_get_u32(info->attrs[NFC_ATTR_IM_PROTOCOLS]);
 else if (info->attrs[NFC_ATTR_PROTOCOLS])
  im_protocols = nla_get_u32(info->attrs[NFC_ATTR_PROTOCOLS]);

 dev = nfc_get_device(idx);
 if (!dev)
  return -ENODEV;

 mutex_lock(&dev->genl_data.genl_data_mutex);

 rc = nfc_start_poll(dev, im_protocols, tm_protocols);
 if (!rc)
  dev->genl_data.poll_req_portid = info->snd_portid;

 mutex_unlock(&dev->genl_data.genl_data_mutex);

 nfc_put_device(dev);
 return rc;
}

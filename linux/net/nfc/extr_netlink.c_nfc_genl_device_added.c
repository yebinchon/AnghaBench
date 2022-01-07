
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NFC_EVENT_DEVICE_ADDED ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nfc_genl_family ;
 scalar_t__ nfc_genl_setup_device_added (struct nfc_dev*,struct sk_buff*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

int nfc_genl_device_added(struct nfc_dev *dev)
{
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 hdr = genlmsg_put(msg, 0, 0, &nfc_genl_family, 0,
     NFC_EVENT_DEVICE_ADDED);
 if (!hdr)
  goto free_msg;

 if (nfc_genl_setup_device_added(dev, msg))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast(&nfc_genl_family, msg, 0, 0, GFP_KERNEL);

 return 0;

nla_put_failure:
free_msg:
 nlmsg_free(msg);
 return -EMSGSIZE;
}

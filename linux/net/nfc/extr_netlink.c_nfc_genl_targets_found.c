
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ poll_req_portid; } ;
struct nfc_dev {int idx; TYPE_1__ genl_data; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NFC_ATTR_DEVICE_INDEX ;
 int NFC_EVENT_TARGETS_FOUND ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nfc_genl_family ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

int nfc_genl_targets_found(struct nfc_dev *dev)
{
 struct sk_buff *msg;
 void *hdr;

 dev->genl_data.poll_req_portid = 0;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!msg)
  return -ENOMEM;

 hdr = genlmsg_put(msg, 0, 0, &nfc_genl_family, 0,
     NFC_EVENT_TARGETS_FOUND);
 if (!hdr)
  goto free_msg;

 if (nla_put_u32(msg, NFC_ATTR_DEVICE_INDEX, dev->idx))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 return genlmsg_multicast(&nfc_genl_family, msg, 0, 0, GFP_ATOMIC);

nla_put_failure:
free_msg:
 nlmsg_free(msg);
 return -EMSGSIZE;
}

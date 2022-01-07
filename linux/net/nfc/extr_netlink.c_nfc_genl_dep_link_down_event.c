
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_dev {int idx; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NFC_ATTR_DEVICE_INDEX ;
 int NFC_CMD_DEP_LINK_DOWN ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nfc_genl_family ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int pr_debug (char*) ;

int nfc_genl_dep_link_down_event(struct nfc_dev *dev)
{
 struct sk_buff *msg;
 void *hdr;

 pr_debug("DEP link is down\n");

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!msg)
  return -ENOMEM;

 hdr = genlmsg_put(msg, 0, 0, &nfc_genl_family, 0,
     NFC_CMD_DEP_LINK_DOWN);
 if (!hdr)
  goto free_msg;

 if (nla_put_u32(msg, NFC_ATTR_DEVICE_INDEX, dev->idx))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast(&nfc_genl_family, msg, 0, 0, GFP_ATOMIC);

 return 0;

nla_put_failure:
free_msg:
 nlmsg_free(msg);
 return -EMSGSIZE;
}

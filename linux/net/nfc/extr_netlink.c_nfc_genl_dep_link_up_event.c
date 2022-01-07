
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nfc_dev {int dep_link_up; int idx; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NFC_ATTR_COMM_MODE ;
 int NFC_ATTR_DEVICE_INDEX ;
 int NFC_ATTR_RF_MODE ;
 int NFC_ATTR_TARGET_INDEX ;
 int NFC_CMD_DEP_LINK_UP ;
 scalar_t__ NFC_RF_INITIATOR ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nfc_genl_family ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int pr_debug (char*) ;

int nfc_genl_dep_link_up_event(struct nfc_dev *dev, u32 target_idx,
          u8 comm_mode, u8 rf_mode)
{
 struct sk_buff *msg;
 void *hdr;

 pr_debug("DEP link is up\n");

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!msg)
  return -ENOMEM;

 hdr = genlmsg_put(msg, 0, 0, &nfc_genl_family, 0, NFC_CMD_DEP_LINK_UP);
 if (!hdr)
  goto free_msg;

 if (nla_put_u32(msg, NFC_ATTR_DEVICE_INDEX, dev->idx))
  goto nla_put_failure;
 if (rf_mode == NFC_RF_INITIATOR &&
     nla_put_u32(msg, NFC_ATTR_TARGET_INDEX, target_idx))
  goto nla_put_failure;
 if (nla_put_u8(msg, NFC_ATTR_COMM_MODE, comm_mode) ||
     nla_put_u8(msg, NFC_ATTR_RF_MODE, rf_mode))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 dev->dep_link_up = 1;

 genlmsg_multicast(&nfc_genl_family, msg, 0, 0, GFP_ATOMIC);

 return 0;

nla_put_failure:
free_msg:
 nlmsg_free(msg);
 return -EMSGSIZE;
}

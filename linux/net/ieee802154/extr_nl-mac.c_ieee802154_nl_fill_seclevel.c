
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int name; } ;
struct ieee802154_llsec_seclevel {scalar_t__ frame_type; scalar_t__ sec_levels; scalar_t__ device_override; scalar_t__ cmd_frame_id; } ;


 int EMSGSIZE ;
 int IEEE802154_ATTR_DEV_INDEX ;
 int IEEE802154_ATTR_DEV_NAME ;
 int IEEE802154_ATTR_LLSEC_CMD_FRAME_ID ;
 int IEEE802154_ATTR_LLSEC_DEV_OVERRIDE ;
 int IEEE802154_ATTR_LLSEC_FRAME_TYPE ;
 int IEEE802154_ATTR_LLSEC_SECLEVELS ;
 scalar_t__ IEEE802154_FC_TYPE_MAC_CMD ;
 int IEEE802154_LLSEC_LIST_SECLEVEL ;
 int NLM_F_MULTI ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nl802154_family ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static int
ieee802154_nl_fill_seclevel(struct sk_buff *msg, u32 portid, u32 seq,
       const struct ieee802154_llsec_seclevel *sl,
       const struct net_device *dev)
{
 void *hdr;

 hdr = genlmsg_put(msg, 0, seq, &nl802154_family, NLM_F_MULTI,
     IEEE802154_LLSEC_LIST_SECLEVEL);
 if (!hdr)
  goto out;

 if (nla_put_string(msg, IEEE802154_ATTR_DEV_NAME, dev->name) ||
     nla_put_u32(msg, IEEE802154_ATTR_DEV_INDEX, dev->ifindex) ||
     nla_put_u8(msg, IEEE802154_ATTR_LLSEC_FRAME_TYPE, sl->frame_type) ||
     nla_put_u8(msg, IEEE802154_ATTR_LLSEC_SECLEVELS, sl->sec_levels) ||
     nla_put_u8(msg, IEEE802154_ATTR_LLSEC_DEV_OVERRIDE,
         sl->device_override))
  goto nla_put_failure;

 if (sl->frame_type == IEEE802154_FC_TYPE_MAC_CMD &&
     nla_put_u8(msg, IEEE802154_ATTR_LLSEC_CMD_FRAME_ID,
         sl->cmd_frame_id))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
out:
 return -EMSGSIZE;
}

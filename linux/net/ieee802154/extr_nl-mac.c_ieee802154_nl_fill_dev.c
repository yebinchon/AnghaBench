
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int name; } ;
struct ieee802154_llsec_device {int key_mode; int seclevel_exempt; int frame_counter; int hwaddr; int short_addr; int pan_id; } ;


 int EMSGSIZE ;
 int IEEE802154_ATTR_DEV_INDEX ;
 int IEEE802154_ATTR_DEV_NAME ;
 int IEEE802154_ATTR_HW_ADDR ;
 int IEEE802154_ATTR_LLSEC_DEV_KEY_MODE ;
 int IEEE802154_ATTR_LLSEC_DEV_OVERRIDE ;
 int IEEE802154_ATTR_LLSEC_FRAME_COUNTER ;
 int IEEE802154_ATTR_PAD ;
 int IEEE802154_ATTR_PAN_ID ;
 int IEEE802154_ATTR_SHORT_ADDR ;
 int IEEE802154_LLSEC_LIST_DEV ;
 int NLM_F_MULTI ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nl802154_family ;
 scalar_t__ nla_put_hwaddr (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_shortaddr (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
ieee802154_nl_fill_dev(struct sk_buff *msg, u32 portid, u32 seq,
         const struct ieee802154_llsec_device *desc,
         const struct net_device *dev)
{
 void *hdr;

 hdr = genlmsg_put(msg, 0, seq, &nl802154_family, NLM_F_MULTI,
     IEEE802154_LLSEC_LIST_DEV);
 if (!hdr)
  goto out;

 if (nla_put_string(msg, IEEE802154_ATTR_DEV_NAME, dev->name) ||
     nla_put_u32(msg, IEEE802154_ATTR_DEV_INDEX, dev->ifindex) ||
     nla_put_shortaddr(msg, IEEE802154_ATTR_PAN_ID, desc->pan_id) ||
     nla_put_shortaddr(msg, IEEE802154_ATTR_SHORT_ADDR,
         desc->short_addr) ||
     nla_put_hwaddr(msg, IEEE802154_ATTR_HW_ADDR, desc->hwaddr,
      IEEE802154_ATTR_PAD) ||
     nla_put_u32(msg, IEEE802154_ATTR_LLSEC_FRAME_COUNTER,
   desc->frame_counter) ||
     nla_put_u8(msg, IEEE802154_ATTR_LLSEC_DEV_OVERRIDE,
         desc->seclevel_exempt) ||
     nla_put_u8(msg, IEEE802154_ATTR_LLSEC_DEV_KEY_MODE, desc->key_mode))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
out:
 return -EMSGSIZE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int name; } ;
struct ieee802154_llsec_device_key {int key_id; int frame_counter; } ;
typedef int __le64 ;


 int EMSGSIZE ;
 int IEEE802154_ATTR_DEV_INDEX ;
 int IEEE802154_ATTR_DEV_NAME ;
 int IEEE802154_ATTR_HW_ADDR ;
 int IEEE802154_ATTR_LLSEC_FRAME_COUNTER ;
 int IEEE802154_ATTR_PAD ;
 int IEEE802154_LLSEC_LIST_DEVKEY ;
 int NLM_F_MULTI ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ ieee802154_llsec_fill_key_id (struct sk_buff*,int *) ;
 int nl802154_family ;
 scalar_t__ nla_put_hwaddr (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
ieee802154_nl_fill_devkey(struct sk_buff *msg, u32 portid, u32 seq,
     __le64 devaddr,
     const struct ieee802154_llsec_device_key *devkey,
     const struct net_device *dev)
{
 void *hdr;

 hdr = genlmsg_put(msg, 0, seq, &nl802154_family, NLM_F_MULTI,
     IEEE802154_LLSEC_LIST_DEVKEY);
 if (!hdr)
  goto out;

 if (nla_put_string(msg, IEEE802154_ATTR_DEV_NAME, dev->name) ||
     nla_put_u32(msg, IEEE802154_ATTR_DEV_INDEX, dev->ifindex) ||
     nla_put_hwaddr(msg, IEEE802154_ATTR_HW_ADDR, devaddr,
      IEEE802154_ATTR_PAD) ||
     nla_put_u32(msg, IEEE802154_ATTR_LLSEC_FRAME_COUNTER,
   devkey->frame_counter) ||
     ieee802154_llsec_fill_key_id(msg, &devkey->key_id))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
out:
 return -EMSGSIZE;
}

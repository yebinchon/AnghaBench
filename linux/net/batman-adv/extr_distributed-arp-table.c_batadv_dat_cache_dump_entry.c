
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; } ;
struct batadv_dat_entry {int vid; int mac_addr; int ip; scalar_t__ last_update; } ;
struct TYPE_2__ {int nlmsg_seq; } ;


 int BATADV_ATTR_DAT_CACHE_HWADDRESS ;
 int BATADV_ATTR_DAT_CACHE_IP4ADDRESS ;
 int BATADV_ATTR_DAT_CACHE_VID ;
 int BATADV_ATTR_LAST_SEEN_MSECS ;
 int BATADV_CMD_GET_DAT_CACHE ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int NLM_F_MULTI ;
 int batadv_netlink_family ;
 int genl_dump_check_consistent (struct netlink_callback*,void*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_in_addr (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int
batadv_dat_cache_dump_entry(struct sk_buff *msg, u32 portid,
       struct netlink_callback *cb,
       struct batadv_dat_entry *dat_entry)
{
 int msecs;
 void *hdr;

 hdr = genlmsg_put(msg, portid, cb->nlh->nlmsg_seq,
     &batadv_netlink_family, NLM_F_MULTI,
     BATADV_CMD_GET_DAT_CACHE);
 if (!hdr)
  return -ENOBUFS;

 genl_dump_check_consistent(cb, hdr);

 msecs = jiffies_to_msecs(jiffies - dat_entry->last_update);

 if (nla_put_in_addr(msg, BATADV_ATTR_DAT_CACHE_IP4ADDRESS,
       dat_entry->ip) ||
     nla_put(msg, BATADV_ATTR_DAT_CACHE_HWADDRESS, ETH_ALEN,
      dat_entry->mac_addr) ||
     nla_put_u16(msg, BATADV_ATTR_DAT_CACHE_VID, dat_entry->vid) ||
     nla_put_u32(msg, BATADV_ATTR_LAST_SEEN_MSECS, msecs)) {
  genlmsg_cancel(msg, hdr);
  return -EMSGSIZE;
 }

 genlmsg_end(msg, hdr);
 return 0;
}

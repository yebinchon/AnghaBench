
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; } ;
struct batadv_orig_node {int mcast_flags; int capabilities; int orig; } ;
struct TYPE_2__ {int nlmsg_seq; } ;


 int BATADV_ATTR_MCAST_FLAGS ;
 int BATADV_ATTR_ORIG_ADDRESS ;
 int BATADV_CMD_GET_MCAST_FLAGS ;
 int BATADV_ORIG_CAPA_HAS_MCAST ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int NLM_F_MULTI ;
 int batadv_netlink_family ;
 int genl_dump_check_consistent (struct netlink_callback*,void*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
batadv_mcast_flags_dump_entry(struct sk_buff *msg, u32 portid,
         struct netlink_callback *cb,
         struct batadv_orig_node *orig_node)
{
 void *hdr;

 hdr = genlmsg_put(msg, portid, cb->nlh->nlmsg_seq,
     &batadv_netlink_family, NLM_F_MULTI,
     BATADV_CMD_GET_MCAST_FLAGS);
 if (!hdr)
  return -ENOBUFS;

 genl_dump_check_consistent(cb, hdr);

 if (nla_put(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN,
      orig_node->orig)) {
  genlmsg_cancel(msg, hdr);
  return -EMSGSIZE;
 }

 if (test_bit(BATADV_ORIG_CAPA_HAS_MCAST,
       &orig_node->capabilities)) {
  if (nla_put_u32(msg, BATADV_ATTR_MCAST_FLAGS,
    orig_node->mcast_flags)) {
   genlmsg_cancel(msg, hdr);
   return -EMSGSIZE;
  }
 }

 genlmsg_end(msg, hdr);
 return 0;
}

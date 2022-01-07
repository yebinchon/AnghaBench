
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct batadv_hardif_neigh_node {TYPE_2__* if_incoming; int addr; scalar_t__ last_seen; } ;
struct TYPE_4__ {TYPE_1__* net_dev; } ;
struct TYPE_3__ {unsigned int ifindex; } ;


 int BATADV_ATTR_HARD_IFINDEX ;
 int BATADV_ATTR_LAST_SEEN_MSECS ;
 int BATADV_ATTR_NEIGH_ADDRESS ;
 int BATADV_CMD_GET_NEIGHBORS ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int NLM_F_MULTI ;
 int batadv_netlink_family ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,unsigned int) ;

__attribute__((used)) static int
batadv_iv_ogm_neigh_dump_neigh(struct sk_buff *msg, u32 portid, u32 seq,
          struct batadv_hardif_neigh_node *hardif_neigh)
{
 void *hdr;
 unsigned int last_seen_msecs;

 last_seen_msecs = jiffies_to_msecs(jiffies - hardif_neigh->last_seen);

 hdr = genlmsg_put(msg, portid, seq, &batadv_netlink_family,
     NLM_F_MULTI, BATADV_CMD_GET_NEIGHBORS);
 if (!hdr)
  return -ENOBUFS;

 if (nla_put(msg, BATADV_ATTR_NEIGH_ADDRESS, ETH_ALEN,
      hardif_neigh->addr) ||
     nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
   hardif_neigh->if_incoming->net_dev->ifindex) ||
     nla_put_u32(msg, BATADV_ATTR_LAST_SEEN_MSECS,
   last_seen_msecs))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}

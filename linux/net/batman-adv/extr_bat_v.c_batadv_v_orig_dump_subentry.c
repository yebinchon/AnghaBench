
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int orig; scalar_t__ last_seen; } ;
struct batadv_neigh_node {struct batadv_hard_iface* if_incoming; int addr; } ;
struct TYPE_3__ {int throughput; } ;
struct batadv_neigh_ifinfo {TYPE_1__ bat_v; } ;
struct batadv_hard_iface {TYPE_2__* net_dev; } ;
struct TYPE_4__ {unsigned int ifindex; } ;


 int BATADV_ATTR_FLAG_BEST ;
 int BATADV_ATTR_HARD_IFINDEX ;
 int BATADV_ATTR_LAST_SEEN_MSECS ;
 int BATADV_ATTR_NEIGH_ADDRESS ;
 int BATADV_ATTR_ORIG_ADDRESS ;
 int BATADV_ATTR_THROUGHPUT ;
 int BATADV_CMD_GET_ORIGINATORS ;
 struct batadv_hard_iface* BATADV_IF_DEFAULT ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int NLM_F_MULTI ;
 struct batadv_neigh_ifinfo* batadv_neigh_ifinfo_get (struct batadv_neigh_node*,struct batadv_hard_iface*) ;
 int batadv_neigh_ifinfo_put (struct batadv_neigh_ifinfo*) ;
 int batadv_netlink_family ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,unsigned int,unsigned int,int *,int ,int ) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,unsigned int) ;

__attribute__((used)) static int
batadv_v_orig_dump_subentry(struct sk_buff *msg, u32 portid, u32 seq,
       struct batadv_priv *bat_priv,
       struct batadv_hard_iface *if_outgoing,
       struct batadv_orig_node *orig_node,
       struct batadv_neigh_node *neigh_node,
       bool best)
{
 struct batadv_neigh_ifinfo *n_ifinfo;
 unsigned int last_seen_msecs;
 u32 throughput;
 void *hdr;

 n_ifinfo = batadv_neigh_ifinfo_get(neigh_node, if_outgoing);
 if (!n_ifinfo)
  return 0;

 throughput = n_ifinfo->bat_v.throughput * 100;

 batadv_neigh_ifinfo_put(n_ifinfo);

 last_seen_msecs = jiffies_to_msecs(jiffies - orig_node->last_seen);

 if (if_outgoing != BATADV_IF_DEFAULT &&
     if_outgoing != neigh_node->if_incoming)
  return 0;

 hdr = genlmsg_put(msg, portid, seq, &batadv_netlink_family, NLM_F_MULTI,
     BATADV_CMD_GET_ORIGINATORS);
 if (!hdr)
  return -ENOBUFS;

 if (nla_put(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN, orig_node->orig) ||
     nla_put(msg, BATADV_ATTR_NEIGH_ADDRESS, ETH_ALEN,
      neigh_node->addr) ||
     nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
   neigh_node->if_incoming->net_dev->ifindex) ||
     nla_put_u32(msg, BATADV_ATTR_THROUGHPUT, throughput) ||
     nla_put_u32(msg, BATADV_ATTR_LAST_SEEN_MSECS,
   last_seen_msecs))
  goto nla_put_failure;

 if (best && nla_put_flag(msg, BATADV_ATTR_FLAG_BEST))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}

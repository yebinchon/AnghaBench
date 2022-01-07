
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int dev_addr; int name; } ;
struct TYPE_12__ {int sel_class; int mode; int bandwidth_up; int bandwidth_down; } ;
struct TYPE_8__ {int group; } ;
struct TYPE_9__ {TYPE_2__ claim_dest; } ;
struct TYPE_7__ {int vn; } ;
struct batadv_priv {int isolation_mark; int isolation_mark_mask; int orig_interval; int network_coding; int multicast_fanout; int multicast_mode; int log_level; int hop_penalty; TYPE_6__ gw; TYPE_5__* algo_ops; int fragmentation; int distributed_arp_table; int bridge_loop_avoidance; int bonding; int aggregated_ogms; TYPE_3__ bla; TYPE_1__ tt; struct net_device* soft_iface; } ;
struct batadv_hard_iface {scalar_t__ if_status; struct net_device* net_dev; } ;
typedef enum batadv_nl_commands { ____Placeholder_batadv_nl_commands } batadv_nl_commands ;
struct TYPE_10__ {scalar_t__ is_eligible; scalar_t__ get_best_gw_node; } ;
struct TYPE_11__ {TYPE_4__ gw; int name; } ;


 int BATADV_ATTR_AGGREGATED_OGMS_ENABLED ;
 int BATADV_ATTR_ALGO_NAME ;
 int BATADV_ATTR_BLA_CRC ;
 int BATADV_ATTR_BONDING_ENABLED ;
 int BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED ;
 int BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED ;
 int BATADV_ATTR_FRAGMENTATION_ENABLED ;
 int BATADV_ATTR_GW_BANDWIDTH_DOWN ;
 int BATADV_ATTR_GW_BANDWIDTH_UP ;
 int BATADV_ATTR_GW_MODE ;
 int BATADV_ATTR_GW_SEL_CLASS ;
 int BATADV_ATTR_HARD_ADDRESS ;
 int BATADV_ATTR_HARD_IFINDEX ;
 int BATADV_ATTR_HARD_IFNAME ;
 int BATADV_ATTR_HOP_PENALTY ;
 int BATADV_ATTR_ISOLATION_MARK ;
 int BATADV_ATTR_ISOLATION_MASK ;
 int BATADV_ATTR_LOG_LEVEL ;
 int BATADV_ATTR_MESH_ADDRESS ;
 int BATADV_ATTR_MESH_IFINDEX ;
 int BATADV_ATTR_MESH_IFNAME ;
 int BATADV_ATTR_MULTICAST_FANOUT ;
 int BATADV_ATTR_MULTICAST_FORCEFLOOD_ENABLED ;
 int BATADV_ATTR_NETWORK_CODING_ENABLED ;
 int BATADV_ATTR_ORIG_INTERVAL ;
 int BATADV_ATTR_TT_TTVN ;
 int BATADV_ATTR_VERSION ;
 scalar_t__ BATADV_IF_ACTIVE ;
 int BATADV_SOURCE_VERSION ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int atomic_read (int *) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 scalar_t__ batadv_mcast_mesh_info_put (struct sk_buff*,struct batadv_priv*) ;
 int batadv_netlink_family ;
 scalar_t__ batadv_netlink_mesh_fill_ap_isolation (struct sk_buff*,struct batadv_priv*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 int ntohs (int ) ;

__attribute__((used)) static int batadv_netlink_mesh_fill(struct sk_buff *msg,
        struct batadv_priv *bat_priv,
        enum batadv_nl_commands cmd,
        u32 portid, u32 seq, int flags)
{
 struct net_device *soft_iface = bat_priv->soft_iface;
 struct batadv_hard_iface *primary_if = ((void*)0);
 struct net_device *hard_iface;
 void *hdr;

 hdr = genlmsg_put(msg, portid, seq, &batadv_netlink_family, flags, cmd);
 if (!hdr)
  return -ENOBUFS;

 if (nla_put_string(msg, BATADV_ATTR_VERSION, BATADV_SOURCE_VERSION) ||
     nla_put_string(msg, BATADV_ATTR_ALGO_NAME,
      bat_priv->algo_ops->name) ||
     nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, soft_iface->ifindex) ||
     nla_put_string(msg, BATADV_ATTR_MESH_IFNAME, soft_iface->name) ||
     nla_put(msg, BATADV_ATTR_MESH_ADDRESS, ETH_ALEN,
      soft_iface->dev_addr) ||
     nla_put_u8(msg, BATADV_ATTR_TT_TTVN,
         (u8)atomic_read(&bat_priv->tt.vn)))
  goto nla_put_failure;







 if (batadv_mcast_mesh_info_put(msg, bat_priv))
  goto nla_put_failure;

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (primary_if && primary_if->if_status == BATADV_IF_ACTIVE) {
  hard_iface = primary_if->net_dev;

  if (nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
    hard_iface->ifindex) ||
      nla_put_string(msg, BATADV_ATTR_HARD_IFNAME,
       hard_iface->name) ||
      nla_put(msg, BATADV_ATTR_HARD_ADDRESS, ETH_ALEN,
       hard_iface->dev_addr))
   goto nla_put_failure;
 }

 if (nla_put_u8(msg, BATADV_ATTR_AGGREGATED_OGMS_ENABLED,
         !!atomic_read(&bat_priv->aggregated_ogms)))
  goto nla_put_failure;

 if (batadv_netlink_mesh_fill_ap_isolation(msg, bat_priv))
  goto nla_put_failure;

 if (nla_put_u32(msg, BATADV_ATTR_ISOLATION_MARK,
   bat_priv->isolation_mark))
  goto nla_put_failure;

 if (nla_put_u32(msg, BATADV_ATTR_ISOLATION_MASK,
   bat_priv->isolation_mark_mask))
  goto nla_put_failure;

 if (nla_put_u8(msg, BATADV_ATTR_BONDING_ENABLED,
         !!atomic_read(&bat_priv->bonding)))
  goto nla_put_failure;
 if (nla_put_u8(msg, BATADV_ATTR_FRAGMENTATION_ENABLED,
         !!atomic_read(&bat_priv->fragmentation)))
  goto nla_put_failure;

 if (nla_put_u32(msg, BATADV_ATTR_GW_BANDWIDTH_DOWN,
   atomic_read(&bat_priv->gw.bandwidth_down)))
  goto nla_put_failure;

 if (nla_put_u32(msg, BATADV_ATTR_GW_BANDWIDTH_UP,
   atomic_read(&bat_priv->gw.bandwidth_up)))
  goto nla_put_failure;

 if (nla_put_u8(msg, BATADV_ATTR_GW_MODE,
         atomic_read(&bat_priv->gw.mode)))
  goto nla_put_failure;

 if (bat_priv->algo_ops->gw.get_best_gw_node &&
     bat_priv->algo_ops->gw.is_eligible) {



  if (nla_put_u32(msg, BATADV_ATTR_GW_SEL_CLASS,
    atomic_read(&bat_priv->gw.sel_class)))
   goto nla_put_failure;
 }

 if (nla_put_u8(msg, BATADV_ATTR_HOP_PENALTY,
         atomic_read(&bat_priv->hop_penalty)))
  goto nla_put_failure;
 if (nla_put_u32(msg, BATADV_ATTR_ORIG_INTERVAL,
   atomic_read(&bat_priv->orig_interval)))
  goto nla_put_failure;

 if (primary_if)
  batadv_hardif_put(primary_if);

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 if (primary_if)
  batadv_hardif_put(primary_if);

 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}

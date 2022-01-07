
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sk_buff {int dummy; } ;
struct net_bridge_port {int flags; int state; int topology_change_ack; int config_pending; int multicast_router; TYPE_1__* dev; int backup_port; int hold_timer; int forward_delay_timer; int message_age_timer; int group_fwd_mask; int port_no; int port_id; int designated_cost; int designated_port; int designated_bridge; int designated_root; int path_cost; int priority; } ;
struct ifla_bridge_id {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 int BR_BCAST_FLOOD ;
 int BR_BPDU_GUARD ;
 int BR_FLOOD ;
 int BR_HAIRPIN_MODE ;
 int BR_ISOLATED ;
 int BR_LEARNING ;
 int BR_MCAST_FLOOD ;
 int BR_MULTICAST_FAST_LEAVE ;
 int BR_MULTICAST_TO_UNICAST ;
 int BR_NEIGH_SUPPRESS ;
 int BR_PROXYARP ;
 int BR_PROXYARP_WIFI ;
 int BR_ROOT_BLOCK ;
 int BR_VLAN_TUNNEL ;
 int EMSGSIZE ;
 int IFLA_BRPORT_BACKUP_PORT ;
 int IFLA_BRPORT_BCAST_FLOOD ;
 int IFLA_BRPORT_BRIDGE_ID ;
 int IFLA_BRPORT_CONFIG_PENDING ;
 int IFLA_BRPORT_COST ;
 int IFLA_BRPORT_DESIGNATED_COST ;
 int IFLA_BRPORT_DESIGNATED_PORT ;
 int IFLA_BRPORT_FAST_LEAVE ;
 int IFLA_BRPORT_FORWARD_DELAY_TIMER ;
 int IFLA_BRPORT_GROUP_FWD_MASK ;
 int IFLA_BRPORT_GUARD ;
 int IFLA_BRPORT_HOLD_TIMER ;
 int IFLA_BRPORT_ID ;
 int IFLA_BRPORT_ISOLATED ;
 int IFLA_BRPORT_LEARNING ;
 int IFLA_BRPORT_MCAST_FLOOD ;
 int IFLA_BRPORT_MCAST_TO_UCAST ;
 int IFLA_BRPORT_MESSAGE_AGE_TIMER ;
 int IFLA_BRPORT_MODE ;
 int IFLA_BRPORT_MULTICAST_ROUTER ;
 int IFLA_BRPORT_NEIGH_SUPPRESS ;
 int IFLA_BRPORT_NO ;
 int IFLA_BRPORT_PAD ;
 int IFLA_BRPORT_PRIORITY ;
 int IFLA_BRPORT_PROTECT ;
 int IFLA_BRPORT_PROXYARP ;
 int IFLA_BRPORT_PROXYARP_WIFI ;
 int IFLA_BRPORT_ROOT_ID ;
 int IFLA_BRPORT_STATE ;
 int IFLA_BRPORT_TOPOLOGY_CHANGE_ACK ;
 int IFLA_BRPORT_UNICAST_FLOOD ;
 int IFLA_BRPORT_VLAN_TUNNEL ;
 int br_timer_value (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 struct net_bridge_port* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int br_port_fill_attrs(struct sk_buff *skb,
         const struct net_bridge_port *p)
{
 u8 mode = !!(p->flags & BR_HAIRPIN_MODE);
 struct net_bridge_port *backup_p;
 u64 timerval;

 if (nla_put_u8(skb, IFLA_BRPORT_STATE, p->state) ||
     nla_put_u16(skb, IFLA_BRPORT_PRIORITY, p->priority) ||
     nla_put_u32(skb, IFLA_BRPORT_COST, p->path_cost) ||
     nla_put_u8(skb, IFLA_BRPORT_MODE, mode) ||
     nla_put_u8(skb, IFLA_BRPORT_GUARD, !!(p->flags & BR_BPDU_GUARD)) ||
     nla_put_u8(skb, IFLA_BRPORT_PROTECT,
         !!(p->flags & BR_ROOT_BLOCK)) ||
     nla_put_u8(skb, IFLA_BRPORT_FAST_LEAVE,
         !!(p->flags & BR_MULTICAST_FAST_LEAVE)) ||
     nla_put_u8(skb, IFLA_BRPORT_MCAST_TO_UCAST,
         !!(p->flags & BR_MULTICAST_TO_UNICAST)) ||
     nla_put_u8(skb, IFLA_BRPORT_LEARNING, !!(p->flags & BR_LEARNING)) ||
     nla_put_u8(skb, IFLA_BRPORT_UNICAST_FLOOD,
         !!(p->flags & BR_FLOOD)) ||
     nla_put_u8(skb, IFLA_BRPORT_MCAST_FLOOD,
         !!(p->flags & BR_MCAST_FLOOD)) ||
     nla_put_u8(skb, IFLA_BRPORT_BCAST_FLOOD,
         !!(p->flags & BR_BCAST_FLOOD)) ||
     nla_put_u8(skb, IFLA_BRPORT_PROXYARP, !!(p->flags & BR_PROXYARP)) ||
     nla_put_u8(skb, IFLA_BRPORT_PROXYARP_WIFI,
         !!(p->flags & BR_PROXYARP_WIFI)) ||
     nla_put(skb, IFLA_BRPORT_ROOT_ID, sizeof(struct ifla_bridge_id),
      &p->designated_root) ||
     nla_put(skb, IFLA_BRPORT_BRIDGE_ID, sizeof(struct ifla_bridge_id),
      &p->designated_bridge) ||
     nla_put_u16(skb, IFLA_BRPORT_DESIGNATED_PORT, p->designated_port) ||
     nla_put_u16(skb, IFLA_BRPORT_DESIGNATED_COST, p->designated_cost) ||
     nla_put_u16(skb, IFLA_BRPORT_ID, p->port_id) ||
     nla_put_u16(skb, IFLA_BRPORT_NO, p->port_no) ||
     nla_put_u8(skb, IFLA_BRPORT_TOPOLOGY_CHANGE_ACK,
         p->topology_change_ack) ||
     nla_put_u8(skb, IFLA_BRPORT_CONFIG_PENDING, p->config_pending) ||
     nla_put_u8(skb, IFLA_BRPORT_VLAN_TUNNEL, !!(p->flags &
       BR_VLAN_TUNNEL)) ||
     nla_put_u16(skb, IFLA_BRPORT_GROUP_FWD_MASK, p->group_fwd_mask) ||
     nla_put_u8(skb, IFLA_BRPORT_NEIGH_SUPPRESS,
         !!(p->flags & BR_NEIGH_SUPPRESS)) ||
     nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
  return -EMSGSIZE;

 timerval = br_timer_value(&p->message_age_timer);
 if (nla_put_u64_64bit(skb, IFLA_BRPORT_MESSAGE_AGE_TIMER, timerval,
         IFLA_BRPORT_PAD))
  return -EMSGSIZE;
 timerval = br_timer_value(&p->forward_delay_timer);
 if (nla_put_u64_64bit(skb, IFLA_BRPORT_FORWARD_DELAY_TIMER, timerval,
         IFLA_BRPORT_PAD))
  return -EMSGSIZE;
 timerval = br_timer_value(&p->hold_timer);
 if (nla_put_u64_64bit(skb, IFLA_BRPORT_HOLD_TIMER, timerval,
         IFLA_BRPORT_PAD))
  return -EMSGSIZE;
 rcu_read_lock();
 backup_p = rcu_dereference(p->backup_port);
 if (backup_p)
  nla_put_u32(skb, IFLA_BRPORT_BACKUP_PORT,
       backup_p->dev->ifindex);
 rcu_read_unlock();

 return 0;
}

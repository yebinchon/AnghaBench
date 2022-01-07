
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge_port {int flags; scalar_t__ state; int path_cost; struct net_bridge* br; struct net_device* dev; } ;
struct net_bridge {int lock; struct net_device* dev; } ;


 int BR_ADMIN_COST ;
 scalar_t__ BR_STATE_DISABLED ;
 int br_stp_disable_port (struct net_bridge_port*) ;
 int br_stp_enable_port (struct net_bridge_port*) ;
 scalar_t__ netif_oper_up (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int port_cost (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void br_port_carrier_check(struct net_bridge_port *p, bool *notified)
{
 struct net_device *dev = p->dev;
 struct net_bridge *br = p->br;

 if (!(p->flags & BR_ADMIN_COST) &&
     netif_running(dev) && netif_oper_up(dev))
  p->path_cost = port_cost(dev);

 *notified = 0;
 if (!netif_running(br->dev))
  return;

 spin_lock_bh(&br->lock);
 if (netif_running(dev) && netif_oper_up(dev)) {
  if (p->state == BR_STATE_DISABLED) {
   br_stp_enable_port(p);
   *notified = 1;
  }
 } else {
  if (p->state != BR_STATE_DISABLED) {
   br_stp_disable_port(p);
   *notified = 1;
  }
 }
 spin_unlock_bh(&br->lock);
}

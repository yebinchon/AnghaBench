
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_bridge_port {scalar_t__ state; int forward_delay_timer; TYPE_1__* dev; scalar_t__ port_no; struct net_bridge* br; } ;
struct net_bridge {int lock; int dev; scalar_t__ forward_delay; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ BR_STATE_FORWARDING ;
 scalar_t__ BR_STATE_LEARNING ;
 scalar_t__ BR_STATE_LISTENING ;
 int RTM_NEWLINK ;
 int br_debug (struct net_bridge*,char*,unsigned int,int ) ;
 int br_ifinfo_notify (int ,int *,struct net_bridge_port*) ;
 scalar_t__ br_is_designated_for_some_port (struct net_bridge*) ;
 int br_set_state (struct net_bridge_port*,scalar_t__) ;
 int br_topology_change_detection (struct net_bridge*) ;
 int forward_delay_timer ;
 struct net_bridge_port* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_carrier_on (int ) ;
 struct net_bridge_port* p ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_forward_delay_timer_expired(struct timer_list *t)
{
 struct net_bridge_port *p = from_timer(p, t, forward_delay_timer);
 struct net_bridge *br = p->br;

 br_debug(br, "port %u(%s) forward delay timer\n",
   (unsigned int) p->port_no, p->dev->name);
 spin_lock(&br->lock);
 if (p->state == BR_STATE_LISTENING) {
  br_set_state(p, BR_STATE_LEARNING);
  mod_timer(&p->forward_delay_timer,
     jiffies + br->forward_delay);
 } else if (p->state == BR_STATE_LEARNING) {
  br_set_state(p, BR_STATE_FORWARDING);
  if (br_is_designated_for_some_port(br))
   br_topology_change_detection(br);
  netif_carrier_on(br->dev);
 }
 rcu_read_lock();
 br_ifinfo_notify(RTM_NEWLINK, ((void*)0), p);
 rcu_read_unlock();
 spin_unlock(&br->lock);
}

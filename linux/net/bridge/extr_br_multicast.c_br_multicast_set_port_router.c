
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {unsigned long multicast_router; int multicast_router_timer; struct net_bridge* br; } ;
struct net_bridge {int multicast_lock; scalar_t__ multicast_querier_interval; } ;


 int EINVAL ;




 int __del_port_router (struct net_bridge_port*) ;
 int br_multicast_add_router (struct net_bridge*,struct net_bridge_port*) ;
 int br_multicast_mark_router (struct net_bridge*,struct net_bridge_port*) ;
 int del_timer (int *) ;
 unsigned long jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
{
 struct net_bridge *br = p->br;
 unsigned long now = jiffies;
 int err = -EINVAL;

 spin_lock(&br->multicast_lock);
 if (p->multicast_router == val) {

  if (p->multicast_router == 129)
   mod_timer(&p->multicast_router_timer,
      now + br->multicast_querier_interval);
  err = 0;
  goto unlock;
 }
 switch (val) {
 case 131:
  p->multicast_router = 131;
  __del_port_router(p);
  del_timer(&p->multicast_router_timer);
  break;
 case 128:
  p->multicast_router = 128;
  __del_port_router(p);
  break;
 case 130:
  p->multicast_router = 130;
  del_timer(&p->multicast_router_timer);
  br_multicast_add_router(br, p);
  break;
 case 129:
  p->multicast_router = 129;
  br_multicast_mark_router(br, p);
  break;
 default:
  goto unlock;
 }
 err = 0;
unlock:
 spin_unlock(&br->multicast_lock);

 return err;
}

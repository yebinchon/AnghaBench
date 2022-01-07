
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {unsigned long multicast_router; int multicast_lock; int multicast_router_timer; } ;


 int EINVAL ;



 int br_mc_router_state_change (struct net_bridge*,int) ;
 int del_timer (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_multicast_set_router(struct net_bridge *br, unsigned long val)
{
 int err = -EINVAL;

 spin_lock_bh(&br->multicast_lock);

 switch (val) {
 case 130:
 case 129:
  br_mc_router_state_change(br, val == 129);
  del_timer(&br->multicast_router_timer);
  br->multicast_router = val;
  err = 0;
  break;
 case 128:
  if (br->multicast_router != 128)
   br_mc_router_state_change(br, 0);
  br->multicast_router = val;
  err = 0;
  break;
 }

 spin_unlock_bh(&br->multicast_lock);

 return err;
}

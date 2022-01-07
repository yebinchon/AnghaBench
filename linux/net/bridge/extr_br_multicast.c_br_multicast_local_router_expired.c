
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_bridge {scalar_t__ multicast_router; int multicast_lock; int multicast_router_timer; } ;


 scalar_t__ MDB_RTR_TYPE_DISABLED ;
 scalar_t__ MDB_RTR_TYPE_PERM ;
 struct net_bridge* br ;
 int br_mc_router_state_change (struct net_bridge*,int) ;
 struct net_bridge* from_timer (int ,struct timer_list*,int ) ;
 int multicast_router_timer ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void br_multicast_local_router_expired(struct timer_list *t)
{
 struct net_bridge *br = from_timer(br, t, multicast_router_timer);

 spin_lock(&br->multicast_lock);
 if (br->multicast_router == MDB_RTR_TYPE_DISABLED ||
     br->multicast_router == MDB_RTR_TYPE_PERM ||
     timer_pending(&br->multicast_router_timer))
  goto out;

 br_mc_router_state_change(br, 0);
out:
 spin_unlock(&br->multicast_lock);
}

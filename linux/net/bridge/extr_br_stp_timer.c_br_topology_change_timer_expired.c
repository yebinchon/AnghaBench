
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_bridge {int lock; scalar_t__ topology_change_detected; } ;


 int __br_set_topology_change (struct net_bridge*,int ) ;
 struct net_bridge* br ;
 int br_debug (struct net_bridge*,char*) ;
 struct net_bridge* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int topology_change_timer ;

__attribute__((used)) static void br_topology_change_timer_expired(struct timer_list *t)
{
 struct net_bridge *br = from_timer(br, t, topology_change_timer);

 br_debug(br, "topo change timer expired\n");
 spin_lock(&br->lock);
 br->topology_change_detected = 0;
 __br_set_topology_change(br, 0);
 spin_unlock(&br->lock);
}

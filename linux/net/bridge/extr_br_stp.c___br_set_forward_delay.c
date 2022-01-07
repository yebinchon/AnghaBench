
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {unsigned long bridge_forward_delay; unsigned long forward_delay; } ;


 scalar_t__ br_is_root_bridge (struct net_bridge*) ;

void __br_set_forward_delay(struct net_bridge *br, unsigned long t)
{
 br->bridge_forward_delay = t;
 if (br_is_root_bridge(br))
  br->forward_delay = br->bridge_forward_delay;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {scalar_t__ stp_enabled; unsigned char topology_change; int forward_delay; unsigned long bridge_ageing_time; unsigned long ageing_time; int dev; } ;


 scalar_t__ BR_KERNEL_STP ;
 int __set_ageing_time (int ,unsigned long) ;
 int br_debug (struct net_bridge*,char*,unsigned long) ;
 int br_warn (struct net_bridge*,char*) ;

void __br_set_topology_change(struct net_bridge *br, unsigned char val)
{
 unsigned long t;
 int err;

 if (br->stp_enabled == BR_KERNEL_STP && br->topology_change != val) {




  if (val) {
   t = 2 * br->forward_delay;
   br_debug(br, "decreasing ageing time to %lu\n", t);
  } else {
   t = br->bridge_ageing_time;
   br_debug(br, "restoring ageing time to %lu\n", t);
  }

  err = __set_ageing_time(br->dev, t);
  if (err)
   br_warn(br, "error offloading ageing time\n");
  else
   br->ageing_time = t;
 }

 br->topology_change = val;
}

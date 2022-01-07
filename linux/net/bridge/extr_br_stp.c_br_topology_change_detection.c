
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {scalar_t__ stp_enabled; int topology_change_detected; scalar_t__ bridge_hello_time; int tcn_timer; scalar_t__ bridge_max_age; scalar_t__ bridge_forward_delay; int topology_change_timer; } ;


 scalar_t__ BR_KERNEL_STP ;
 int __br_set_topology_change (struct net_bridge*,int) ;
 int br_info (struct net_bridge*,char*,char*) ;
 int br_is_root_bridge (struct net_bridge*) ;
 int br_transmit_tcn (struct net_bridge*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void br_topology_change_detection(struct net_bridge *br)
{
 int isroot = br_is_root_bridge(br);

 if (br->stp_enabled != BR_KERNEL_STP)
  return;

 br_info(br, "topology change detected, %s\n",
  isroot ? "propagating" : "sending tcn bpdu");

 if (isroot) {
  __br_set_topology_change(br, 1);
  mod_timer(&br->topology_change_timer, jiffies
     + br->bridge_forward_delay + br->bridge_max_age);
 } else if (!br->topology_change_detected) {
  br_transmit_tcn(br);
  mod_timer(&br->tcn_timer, jiffies + br->bridge_hello_time);
 }

 br->topology_change_detected = 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge {scalar_t__ hello_time; int hello_timer; TYPE_1__* dev; int tcn_timer; int bridge_forward_delay; int forward_delay; scalar_t__ bridge_hello_time; int bridge_max_age; int max_age; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;
 int br_config_bpdu_generation (struct net_bridge*) ;
 int br_topology_change_detection (struct net_bridge*) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void br_become_root_bridge(struct net_bridge *br)
{
 br->max_age = br->bridge_max_age;
 br->hello_time = br->bridge_hello_time;
 br->forward_delay = br->bridge_forward_delay;
 br_topology_change_detection(br);
 del_timer(&br->tcn_timer);

 if (br->dev->flags & IFF_UP) {
  br_config_bpdu_generation(br);
  mod_timer(&br->hello_timer, jiffies + br->hello_time);
 }
}

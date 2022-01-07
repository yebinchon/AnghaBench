
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int forward_delay; int hello_time; int max_age; } ;
struct br_config_bpdu {int topology_change; int forward_delay; int hello_time; int max_age; } ;


 int __br_set_topology_change (struct net_bridge*,int ) ;

__attribute__((used)) static void br_record_config_timeout_values(struct net_bridge *br,
         const struct br_config_bpdu *bpdu)
{
 br->max_age = bpdu->max_age;
 br->hello_time = bpdu->hello_time;
 br->forward_delay = bpdu->forward_delay;
 __br_set_topology_change(br, bpdu->topology_change);
}

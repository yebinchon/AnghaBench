
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int topology_change_timer; int tcn_timer; int hello_timer; } ;


 int br_hello_timer_expired ;
 int br_tcn_timer_expired ;
 int br_topology_change_timer_expired ;
 int timer_setup (int *,int ,int ) ;

void br_stp_timer_init(struct net_bridge *br)
{
 timer_setup(&br->hello_timer, br_hello_timer_expired, 0);
 timer_setup(&br->tcn_timer, br_tcn_timer_expired, 0);
 timer_setup(&br->topology_change_timer,
      br_topology_change_timer_expired, 0);
}

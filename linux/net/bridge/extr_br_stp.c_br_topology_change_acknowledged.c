
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int tcn_timer; scalar_t__ topology_change_detected; } ;


 int del_timer (int *) ;

__attribute__((used)) static void br_topology_change_acknowledged(struct net_bridge *br)
{
 br->topology_change_detected = 0;
 del_timer(&br->tcn_timer);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int topology_change_ack; } ;


 int br_transmit_config (struct net_bridge_port*) ;

__attribute__((used)) static void br_topology_change_acknowledge(struct net_bridge_port *p)
{
 p->topology_change_ack = 1;
 br_transmit_config(p);
}

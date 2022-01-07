
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int dummy; } ;


 int br_transmit_config (struct net_bridge_port*) ;

__attribute__((used)) static void br_reply(struct net_bridge_port *p)
{
 br_transmit_config(p);
}

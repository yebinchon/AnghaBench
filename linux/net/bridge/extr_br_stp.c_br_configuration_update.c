
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int br_designated_port_selection (struct net_bridge*) ;
 int br_root_selection (struct net_bridge*) ;

void br_configuration_update(struct net_bridge *br)
{
 br_root_selection(br);
 br_designated_port_selection(br);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;


 unsigned long BR_AUTO_MASK ;
 unsigned long BR_NEIGH_SUPPRESS ;
 int br_recalculate_neigh_suppress_enabled (struct net_bridge*) ;
 int nbp_update_port_count (struct net_bridge*) ;

void br_port_flags_change(struct net_bridge_port *p, unsigned long mask)
{
 struct net_bridge *br = p->br;

 if (mask & BR_AUTO_MASK)
  nbp_update_port_count(br);

 if (mask & BR_NEIGH_SUPPRESS)
  br_recalculate_neigh_suppress_enabled(br);
}

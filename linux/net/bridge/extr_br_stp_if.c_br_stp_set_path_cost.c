
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {unsigned long path_cost; int br; int flags; } ;


 int BR_ADMIN_COST ;
 unsigned long BR_MAX_PATH_COST ;
 unsigned long BR_MIN_PATH_COST ;
 int ERANGE ;
 int br_configuration_update (int ) ;
 int br_port_state_selection (int ) ;

int br_stp_set_path_cost(struct net_bridge_port *p, unsigned long path_cost)
{
 if (path_cost < BR_MIN_PATH_COST ||
     path_cost > BR_MAX_PATH_COST)
  return -ERANGE;

 p->flags |= BR_ADMIN_COST;
 p->path_cost = path_cost;
 br_configuration_update(p->br);
 br_port_state_selection(p->br);
 return 0;
}

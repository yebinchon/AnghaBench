
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {unsigned long keepalive_intv; } ;
struct tipc_link {int dummy; } ;


 int tipc_link_set_abort_limit (struct tipc_link*,unsigned long) ;
 unsigned long tipc_link_tolerance (struct tipc_link*) ;

__attribute__((used)) static void tipc_node_calculate_timer(struct tipc_node *n, struct tipc_link *l)
{
 unsigned long tol = tipc_link_tolerance(l);
 unsigned long intv = ((tol / 4) > 500) ? 500 : tol / 4;


 if (intv < n->keepalive_intv)
  n->keepalive_intv = intv;


 tipc_link_set_abort_limit(l, tol / n->keepalive_intv);
}

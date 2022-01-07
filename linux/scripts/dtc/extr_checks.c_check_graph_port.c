
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int basenamelen; int name; int * bus; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*) ;
 int check_graph_reg (struct check*,struct dt_info*,struct node*) ;
 int graph_port_bus ;
 int strprefixeq (int ,int ,char*) ;

__attribute__((used)) static void check_graph_port(struct check *c, struct dt_info *dti,
        struct node *node)
{
 if (node->bus != &graph_port_bus)
  return;

 if (!strprefixeq(node->name, node->basenamelen, "port"))
  FAIL(c, dti, node, "graph port node name should be 'port'");

 check_graph_reg(c, dti, node);
}

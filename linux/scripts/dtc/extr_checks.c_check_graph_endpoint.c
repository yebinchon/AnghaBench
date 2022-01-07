
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct node {int fullpath; int basenamelen; int name; TYPE_1__* parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
struct TYPE_2__ {int * bus; } ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*,...) ;
 int check_graph_reg (struct check*,struct dt_info*,struct node*) ;
 struct node* get_remote_endpoint (struct check*,struct dt_info*,struct node*) ;
 int graph_port_bus ;
 int strprefixeq (int ,int ,char*) ;

__attribute__((used)) static void check_graph_endpoint(struct check *c, struct dt_info *dti,
     struct node *node)
{
 struct node *remote_node;

 if (!node->parent || node->parent->bus != &graph_port_bus)
  return;

 if (!strprefixeq(node->name, node->basenamelen, "endpoint"))
  FAIL(c, dti, node, "graph endpoint node name should be 'endpoint'");

 check_graph_reg(c, dti, node);

 remote_node = get_remote_endpoint(c, dti, node);
 if (!remote_node)
  return;

 if (get_remote_endpoint(c, dti, remote_node) != node)
  FAIL(c, dti, node, "graph connection to node '%s' is not bidirectional",
       remote_node->fullpath);
}

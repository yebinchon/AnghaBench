
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int * bus; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;


 scalar_t__ node_is_compatible (struct node*,char*) ;
 int simple_bus ;

__attribute__((used)) static void check_simple_bus_bridge(struct check *c, struct dt_info *dti, struct node *node)
{
 if (node_is_compatible(node, "simple-bus"))
  node->bus = &simple_bus;
}

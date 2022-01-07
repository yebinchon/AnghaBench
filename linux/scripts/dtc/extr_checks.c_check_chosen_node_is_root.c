
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {scalar_t__ parent; int name; } ;
struct dt_info {scalar_t__ dt; } ;
struct check {int dummy; } ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*) ;
 int streq (int ,char*) ;

__attribute__((used)) static void check_chosen_node_is_root(struct check *c, struct dt_info *dti,
          struct node *node)
{
 if (!streq(node->name, "chosen"))
  return;

 if (node->parent != dti->dt)
  FAIL(c, dti, node, "chosen node must be at root node");
}

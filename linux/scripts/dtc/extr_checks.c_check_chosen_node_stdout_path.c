
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int name; } ;
struct node {int name; } ;
struct dt_info {int dummy; } ;
struct check {int data; } ;


 int FAIL_PROP (struct check*,struct dt_info*,struct node*,struct property*,char*) ;
 int check_is_string (struct check*,struct dt_info*,struct node*) ;
 struct property* get_property (struct node*,char*) ;
 int streq (int ,char*) ;

__attribute__((used)) static void check_chosen_node_stdout_path(struct check *c, struct dt_info *dti,
       struct node *node)
{
 struct property *prop;

 if (!streq(node->name, "chosen"))
  return;

 prop = get_property(node, "stdout-path");
 if (!prop) {
  prop = get_property(node, "linux,stdout-path");
  if (!prop)
   return;
  FAIL_PROP(c, dti, node, prop, "Use 'stdout-path' instead");
 }

 c->data = prop->name;
 check_is_string(c, dti, node);
}

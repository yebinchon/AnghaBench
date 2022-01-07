
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct node {int dummy; } ;
struct dt_info {int dt; } ;
struct check {int dummy; } ;


 int FAIL_PROP (struct check*,struct dt_info*,struct node*,struct property*,char*) ;
 struct node* get_node_by_phandle (int ,int) ;
 struct property* get_property (struct node*,char*) ;
 int propval_cell (struct property*) ;

__attribute__((used)) static struct node *get_remote_endpoint(struct check *c, struct dt_info *dti,
     struct node *endpoint)
{
 int phandle;
 struct node *node;
 struct property *prop;

 prop = get_property(endpoint, "remote-endpoint");
 if (!prop)
  return ((void*)0);

 phandle = propval_cell(prop);

 if (phandle == 0 || phandle == -1)
  return ((void*)0);

 node = get_node_by_phandle(dti->dt, phandle);
 if (!node)
  FAIL_PROP(c, dti, endpoint, prop, "graph phandle is not valid");

 return node;
}

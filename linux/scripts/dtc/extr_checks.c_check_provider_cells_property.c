
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct provider {int prop_name; } ;
struct property {int dummy; } ;
struct node {int dummy; } ;
struct dt_info {int dummy; } ;
struct check {struct provider* data; } ;


 int check_property_phandle_args (struct check*,struct dt_info*,struct node*,struct property*,struct provider*) ;
 struct property* get_property (struct node*,int ) ;

__attribute__((used)) static void check_provider_cells_property(struct check *c,
       struct dt_info *dti,
              struct node *node)
{
 struct provider *provider = c->data;
 struct property *prop;

 prop = get_property(node, provider->prop_name);
 if (!prop)
  return;

 check_property_phandle_args(c, dti, node, prop, provider);
}

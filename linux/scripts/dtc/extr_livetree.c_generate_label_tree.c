
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt_info {int dt; } ;


 int any_label_tree (struct dt_info*,int ) ;
 int build_root_node (int ,char*) ;
 int generate_label_tree_internal (struct dt_info*,int ,int ,int) ;

void generate_label_tree(struct dt_info *dti, char *name, bool allocph)
{
 if (!any_label_tree(dti, dti->dt))
  return;
 generate_label_tree_internal(dti, build_root_node(dti->dt, name),
         dti->dt, allocph);
}

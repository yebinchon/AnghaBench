
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_node {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct bin_attribute {TYPE_1__ attr; } ;
struct attribute_group {struct bin_attribute** bin_attrs; struct attribute** attrs; } ;
struct attribute {int name; } ;


 int kernfs_remove_by_name (struct kernfs_node*,int ) ;

__attribute__((used)) static void remove_files(struct kernfs_node *parent,
    const struct attribute_group *grp)
{
 struct attribute *const *attr;
 struct bin_attribute *const *bin_attr;

 if (grp->attrs)
  for (attr = grp->attrs; *attr; attr++)
   kernfs_remove_by_name(parent, (*attr)->name);
 if (grp->bin_attrs)
  for (bin_attr = grp->bin_attrs; *bin_attr; bin_attr++)
   kernfs_remove_by_name(parent, (*bin_attr)->attr.name);
}

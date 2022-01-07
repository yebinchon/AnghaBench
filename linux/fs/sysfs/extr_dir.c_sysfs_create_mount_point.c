
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;


 int EEXIST ;
 scalar_t__ IS_ERR (struct kernfs_node*) ;
 int PTR_ERR (struct kernfs_node*) ;
 struct kernfs_node* kernfs_create_empty_dir (struct kernfs_node*,char const*) ;
 int sysfs_warn_dup (struct kernfs_node*,char const*) ;

int sysfs_create_mount_point(struct kobject *parent_kobj, const char *name)
{
 struct kernfs_node *kn, *parent = parent_kobj->sd;

 kn = kernfs_create_empty_dir(parent, name);
 if (IS_ERR(kn)) {
  if (PTR_ERR(kn) == -EEXIST)
   sysfs_warn_dup(parent, name);
  return PTR_ERR(kn);
 }

 return 0;
}

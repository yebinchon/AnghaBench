
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int name; } ;


 int kernfs_rename_ns (struct kernfs_node*,struct kernfs_node*,int ,void const*) ;
 struct kernfs_node* sysfs_root_kn ;

int sysfs_move_dir_ns(struct kobject *kobj, struct kobject *new_parent_kobj,
        const void *new_ns)
{
 struct kernfs_node *kn = kobj->sd;
 struct kernfs_node *new_parent;

 new_parent = new_parent_kobj && new_parent_kobj->sd ?
  new_parent_kobj->sd : sysfs_root_kn;

 return kernfs_rename_ns(kn, new_parent, kn->name, new_ns);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct kernfs_node {int dummy; } ;
struct attribute_group {struct attribute** attrs; int name; } ;
struct attribute {int name; int mode; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ENOENT ;
 struct kernfs_node* kernfs_find_and_get (int ,int ) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_remove_by_name (struct kernfs_node*,int ) ;
 int kobject_get_ownership (struct kobject*,int *,int *) ;
 int sysfs_add_file_mode_ns (struct kernfs_node*,struct attribute* const,int,int ,int ,int ,int *) ;

int sysfs_merge_group(struct kobject *kobj,
         const struct attribute_group *grp)
{
 struct kernfs_node *parent;
 kuid_t uid;
 kgid_t gid;
 int error = 0;
 struct attribute *const *attr;
 int i;

 parent = kernfs_find_and_get(kobj->sd, grp->name);
 if (!parent)
  return -ENOENT;

 kobject_get_ownership(kobj, &uid, &gid);

 for ((i = 0, attr = grp->attrs); *attr && !error; (++i, ++attr))
  error = sysfs_add_file_mode_ns(parent, *attr, 0,
            (*attr)->mode, uid, gid, ((void*)0));
 if (error) {
  while (--i >= 0)
   kernfs_remove_by_name(parent, (*--attr)->name);
 }
 kernfs_put(parent);

 return error;
}

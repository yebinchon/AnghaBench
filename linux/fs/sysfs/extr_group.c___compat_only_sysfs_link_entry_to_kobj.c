
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;


 int EEXIST ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct kernfs_node*) ;
 int PTR_ERR (struct kernfs_node*) ;
 int PTR_ERR_OR_ZERO (struct kernfs_node*) ;
 struct kernfs_node* kernfs_create_link (struct kernfs_node*,char const*,struct kernfs_node*) ;
 struct kernfs_node* kernfs_find_and_get (struct kernfs_node*,char const*) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_put (struct kernfs_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_symlink_target_lock ;
 int sysfs_warn_dup (struct kernfs_node*,char const*) ;

int __compat_only_sysfs_link_entry_to_kobj(struct kobject *kobj,
          struct kobject *target_kobj,
          const char *target_name)
{
 struct kernfs_node *target;
 struct kernfs_node *entry;
 struct kernfs_node *link;






 spin_lock(&sysfs_symlink_target_lock);
 target = target_kobj->sd;
 if (target)
  kernfs_get(target);
 spin_unlock(&sysfs_symlink_target_lock);
 if (!target)
  return -ENOENT;

 entry = kernfs_find_and_get(target_kobj->sd, target_name);
 if (!entry) {
  kernfs_put(target);
  return -ENOENT;
 }

 link = kernfs_create_link(kobj->sd, target_name, entry);
 if (IS_ERR(link) && PTR_ERR(link) == -EEXIST)
  sysfs_warn_dup(kobj->sd, target_name);

 kernfs_put(entry);
 kernfs_put(target);
 return PTR_ERR_OR_ZERO(link);
}

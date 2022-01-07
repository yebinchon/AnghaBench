
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int IS_ERR (struct kernfs_node*) ;
 int PTR_ERR (struct kernfs_node*) ;
 scalar_t__ WARN_ON (int) ;
 struct kernfs_node* kernfs_create_link (struct kernfs_node*,char const*,struct kernfs_node*) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_put (struct kernfs_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_symlink_target_lock ;
 int sysfs_warn_dup (struct kernfs_node*,char const*) ;

__attribute__((used)) static int sysfs_do_create_link_sd(struct kernfs_node *parent,
       struct kobject *target_kobj,
       const char *name, int warn)
{
 struct kernfs_node *kn, *target = ((void*)0);

 if (WARN_ON(!name || !parent))
  return -EINVAL;






 spin_lock(&sysfs_symlink_target_lock);
 if (target_kobj->sd) {
  target = target_kobj->sd;
  kernfs_get(target);
 }
 spin_unlock(&sysfs_symlink_target_lock);

 if (!target)
  return -ENOENT;

 kn = kernfs_create_link(parent, name, target);
 kernfs_put(target);

 if (!IS_ERR(kn))
  return 0;

 if (warn && PTR_ERR(kn) == -EEXIST)
  sysfs_warn_dup(parent, name);
 return PTR_ERR(kn);
}

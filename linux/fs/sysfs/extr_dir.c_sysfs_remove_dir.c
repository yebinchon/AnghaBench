
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;


 scalar_t__ KERNFS_DIR ;
 int WARN_ON_ONCE (int) ;
 int kernfs_remove (struct kernfs_node*) ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_symlink_target_lock ;

void sysfs_remove_dir(struct kobject *kobj)
{
 struct kernfs_node *kn = kobj->sd;
 spin_lock(&sysfs_symlink_target_lock);
 kobj->sd = ((void*)0);
 spin_unlock(&sysfs_symlink_target_lock);

 if (kn) {
  WARN_ON_ONCE(kernfs_type(kn) != KERNFS_DIR);
  kernfs_remove(kn);
 }
}

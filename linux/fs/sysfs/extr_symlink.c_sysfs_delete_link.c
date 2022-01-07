
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {TYPE_1__* sd; } ;
struct TYPE_3__ {void* ns; } ;


 scalar_t__ kernfs_ns_enabled (TYPE_1__*) ;
 int kernfs_remove_by_name_ns (TYPE_1__*,char const*,void const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_symlink_target_lock ;

void sysfs_delete_link(struct kobject *kobj, struct kobject *targ,
   const char *name)
{
 const void *ns = ((void*)0);






 spin_lock(&sysfs_symlink_target_lock);
 if (targ->sd && kernfs_ns_enabled(kobj->sd))
  ns = targ->sd->ns;
 spin_unlock(&sysfs_symlink_target_lock);
 kernfs_remove_by_name_ns(kobj->sd, name, ns);
}

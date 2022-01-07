
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int sd; } ;
struct TYPE_2__ {int mode; } ;
struct bin_attribute {TYPE_1__ attr; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int kobject_get_ownership (struct kobject*,int *,int *) ;
 int sysfs_add_file_mode_ns (int ,TYPE_1__*,int,int ,int ,int ,int *) ;

int sysfs_create_bin_file(struct kobject *kobj,
     const struct bin_attribute *attr)
{
 kuid_t uid;
 kgid_t gid;

 if (WARN_ON(!kobj || !kobj->sd || !attr))
  return -EINVAL;

 kobject_get_ownership(kobj, &uid, &gid);
 return sysfs_add_file_mode_ns(kobj->sd, &attr->attr, 1,
          attr->attr.mode, uid, gid, ((void*)0));
}

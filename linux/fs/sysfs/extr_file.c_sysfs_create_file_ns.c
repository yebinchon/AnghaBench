
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct attribute {int mode; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int kobject_get_ownership (struct kobject*,int *,int *) ;
 int sysfs_add_file_mode_ns (int ,struct attribute const*,int,int ,int ,int ,void const*) ;

int sysfs_create_file_ns(struct kobject *kobj, const struct attribute *attr,
    const void *ns)
{
 kuid_t uid;
 kgid_t gid;

 if (WARN_ON(!kobj || !kobj->sd || !attr))
  return -EINVAL;

 kobject_get_ownership(kobj, &uid, &gid);
 return sysfs_add_file_mode_ns(kobj->sd, attr, 0, attr->mode,
          uid, gid, ns);

}

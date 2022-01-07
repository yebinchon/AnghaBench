
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct kobj_type {int default_groups; } ;
struct kobj_ns_type_operations {scalar_t__ type; } ;


 int BUG_ON (int) ;
 scalar_t__ KOBJ_NS_TYPES ;
 scalar_t__ KOBJ_NS_TYPE_NONE ;
 struct kobj_type* get_ktype (struct kobject*) ;
 struct kobj_ns_type_operations* kobj_child_ns_ops (struct kobject*) ;
 int kobj_ns_type_registered (scalar_t__) ;
 int kobject_namespace (struct kobject*) ;
 int populate_dir (struct kobject*) ;
 int sysfs_create_dir_ns (struct kobject*,int ) ;
 int sysfs_create_groups (struct kobject*,int ) ;
 int sysfs_enable_ns (int ) ;
 int sysfs_get (int ) ;
 int sysfs_remove_dir (struct kobject*) ;

__attribute__((used)) static int create_dir(struct kobject *kobj)
{
 const struct kobj_type *ktype = get_ktype(kobj);
 const struct kobj_ns_type_operations *ops;
 int error;

 error = sysfs_create_dir_ns(kobj, kobject_namespace(kobj));
 if (error)
  return error;

 error = populate_dir(kobj);
 if (error) {
  sysfs_remove_dir(kobj);
  return error;
 }

 if (ktype) {
  error = sysfs_create_groups(kobj, ktype->default_groups);
  if (error) {
   sysfs_remove_dir(kobj);
   return error;
  }
 }





 sysfs_get(kobj->sd);





 ops = kobj_child_ns_ops(kobj);
 if (ops) {
  BUG_ON(ops->type <= KOBJ_NS_TYPE_NONE);
  BUG_ON(ops->type >= KOBJ_NS_TYPES);
  BUG_ON(!kobj_ns_type_registered(ops->type));

  sysfs_enable_ns(kobj->sd);
 }

 return 0;
}

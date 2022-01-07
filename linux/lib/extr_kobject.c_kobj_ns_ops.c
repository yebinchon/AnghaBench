
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int parent; } ;
struct kobj_ns_type_operations {int dummy; } ;


 struct kobj_ns_type_operations const* kobj_child_ns_ops (int ) ;

const struct kobj_ns_type_operations *kobj_ns_ops(struct kobject *kobj)
{
 return kobj_child_ns_ops(kobj->parent);
}

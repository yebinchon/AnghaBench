
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {TYPE_1__* ktype; } ;
struct kobj_ns_type_operations {int dummy; } ;
struct TYPE_2__ {struct kobj_ns_type_operations* (* child_ns_type ) (struct kobject*) ;} ;


 struct kobj_ns_type_operations* stub1 (struct kobject*) ;

const struct kobj_ns_type_operations *kobj_child_ns_ops(struct kobject *parent)
{
 const struct kobj_ns_type_operations *ops = ((void*)0);

 if (parent && parent->ktype && parent->ktype->child_ns_type)
  ops = parent->ktype->child_ns_type(parent);

 return ops;
}

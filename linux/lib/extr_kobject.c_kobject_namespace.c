
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {TYPE_1__* ktype; } ;
struct kobj_ns_type_operations {scalar_t__ type; } ;
struct TYPE_2__ {void const* (* namespace ) (struct kobject*) ;} ;


 scalar_t__ KOBJ_NS_TYPE_NONE ;
 struct kobj_ns_type_operations* kobj_ns_ops (struct kobject*) ;
 void const* stub1 (struct kobject*) ;

const void *kobject_namespace(struct kobject *kobj)
{
 const struct kobj_ns_type_operations *ns_ops = kobj_ns_ops(kobj);

 if (!ns_ops || ns_ops->type == KOBJ_NS_TYPE_NONE)
  return ((void*)0);

 return kobj->ktype->namespace(kobj);
}

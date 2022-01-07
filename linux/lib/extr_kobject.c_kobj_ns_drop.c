
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum kobj_ns_type { ____Placeholder_kobj_ns_type } kobj_ns_type ;
struct TYPE_2__ {int (* drop_ns ) (void*) ;} ;


 int KOBJ_NS_TYPES ;
 int KOBJ_NS_TYPE_NONE ;
 TYPE_1__** kobj_ns_ops_tbl ;
 int kobj_ns_type_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (void*) ;

void kobj_ns_drop(enum kobj_ns_type type, void *ns)
{
 spin_lock(&kobj_ns_type_lock);
 if ((type > KOBJ_NS_TYPE_NONE) && (type < KOBJ_NS_TYPES) &&
     kobj_ns_ops_tbl[type] && kobj_ns_ops_tbl[type]->drop_ns)
  kobj_ns_ops_tbl[type]->drop_ns(ns);
 spin_unlock(&kobj_ns_type_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum kobj_ns_type { ____Placeholder_kobj_ns_type } kobj_ns_type ;
struct TYPE_2__ {void* (* grab_current_ns ) () ;} ;


 int KOBJ_NS_TYPES ;
 int KOBJ_NS_TYPE_NONE ;
 TYPE_1__** kobj_ns_ops_tbl ;
 int kobj_ns_type_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void* stub1 () ;

void *kobj_ns_grab_current(enum kobj_ns_type type)
{
 void *ns = ((void*)0);

 spin_lock(&kobj_ns_type_lock);
 if ((type > KOBJ_NS_TYPE_NONE) && (type < KOBJ_NS_TYPES) &&
     kobj_ns_ops_tbl[type])
  ns = kobj_ns_ops_tbl[type]->grab_current_ns();
 spin_unlock(&kobj_ns_type_lock);

 return ns;
}

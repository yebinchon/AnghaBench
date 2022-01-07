
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kobj_ns_type { ____Placeholder_kobj_ns_type } kobj_ns_type ;


 int KOBJ_NS_TYPES ;
 int KOBJ_NS_TYPE_NONE ;
 int ** kobj_ns_ops_tbl ;
 int kobj_ns_type_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kobj_ns_type_registered(enum kobj_ns_type type)
{
 int registered = 0;

 spin_lock(&kobj_ns_type_lock);
 if ((type > KOBJ_NS_TYPE_NONE) && (type < KOBJ_NS_TYPES))
  registered = kobj_ns_ops_tbl[type] != ((void*)0);
 spin_unlock(&kobj_ns_type_lock);

 return registered;
}

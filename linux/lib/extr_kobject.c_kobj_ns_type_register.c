
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_ns_type_operations {int type; } ;
typedef enum kobj_ns_type { ____Placeholder_kobj_ns_type } kobj_ns_type ;


 int EBUSY ;
 int EINVAL ;
 int KOBJ_NS_TYPES ;
 int KOBJ_NS_TYPE_NONE ;
 struct kobj_ns_type_operations const** kobj_ns_ops_tbl ;
 int kobj_ns_type_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kobj_ns_type_register(const struct kobj_ns_type_operations *ops)
{
 enum kobj_ns_type type = ops->type;
 int error;

 spin_lock(&kobj_ns_type_lock);

 error = -EINVAL;
 if (type >= KOBJ_NS_TYPES)
  goto out;

 error = -EINVAL;
 if (type <= KOBJ_NS_TYPE_NONE)
  goto out;

 error = -EBUSY;
 if (kobj_ns_ops_tbl[type])
  goto out;

 error = 0;
 kobj_ns_ops_tbl[type] = ops;

out:
 spin_unlock(&kobj_ns_type_lock);
 return error;
}

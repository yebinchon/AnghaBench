
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_kobj {int kobject; int complete; } ;
struct kobj_type {int dummy; } ;


 int init_completion (int *) ;
 int kobject_init_and_add (int *,struct kobj_type*,int *,char*,char const*) ;

__attribute__((used)) static inline int
xfs_sysfs_init(
 struct xfs_kobj *kobj,
 struct kobj_type *ktype,
 struct xfs_kobj *parent_kobj,
 const char *name)
{
 init_completion(&kobj->complete);
 return kobject_init_and_add(&kobj->kobject, ktype,
        &parent_kobj->kobject, "%s", name);
}

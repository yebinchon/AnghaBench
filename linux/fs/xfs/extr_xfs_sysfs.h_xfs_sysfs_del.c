
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_kobj {int complete; int kobject; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static inline void
xfs_sysfs_del(
 struct xfs_kobj *kobj)
{
 kobject_del(&kobj->kobject);
 kobject_put(&kobj->kobject);
 wait_for_completion(&kobj->complete);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_kobj {int complete; } ;
struct kobject {int dummy; } ;


 int complete (int *) ;
 struct xfs_kobj* to_kobj (struct kobject*) ;

__attribute__((used)) static inline void
xfs_sysfs_release(struct kobject *kobject)
{
 struct xfs_kobj *kobj = to_kobj(kobject);
 complete(&kobj->complete);
}

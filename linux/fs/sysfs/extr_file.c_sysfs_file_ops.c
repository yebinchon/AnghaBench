
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysfs_ops {int dummy; } ;
struct kobject {TYPE_2__* ktype; } ;
struct kernfs_node {int flags; TYPE_1__* parent; } ;
struct TYPE_4__ {struct sysfs_ops const* sysfs_ops; } ;
struct TYPE_3__ {struct kobject* priv; } ;


 int KERNFS_LOCKDEP ;
 int lockdep_assert_held (struct kernfs_node*) ;

__attribute__((used)) static const struct sysfs_ops *sysfs_file_ops(struct kernfs_node *kn)
{
 struct kobject *kobj = kn->parent->priv;

 if (kn->flags & KERNFS_LOCKDEP)
  lockdep_assert_held(kn);
 return kobj->ktype ? kobj->ktype->sysfs_ops : ((void*)0);
}

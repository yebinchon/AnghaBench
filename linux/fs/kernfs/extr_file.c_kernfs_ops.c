
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_ops {int dummy; } ;
struct TYPE_2__ {struct kernfs_ops const* ops; } ;
struct kernfs_node {int flags; TYPE_1__ attr; } ;


 int KERNFS_LOCKDEP ;
 int lockdep_assert_held (struct kernfs_node*) ;

__attribute__((used)) static const struct kernfs_ops *kernfs_ops(struct kernfs_node *kn)
{
 if (kn->flags & KERNFS_LOCKDEP)
  lockdep_assert_held(kn);
 return kn->attr.ops;
}

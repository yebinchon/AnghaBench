
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_node {int active; int dep_map; } ;
struct TYPE_2__ {int deactivate_waitq; } ;


 int KN_DEACTIVATED_BIAS ;
 int _RET_IP_ ;
 int atomic_dec_return (int *) ;
 scalar_t__ kernfs_lockdep (struct kernfs_node*) ;
 TYPE_1__* kernfs_root (struct kernfs_node*) ;
 scalar_t__ likely (int) ;
 int rwsem_release (int *,int,int ) ;
 scalar_t__ unlikely (int) ;
 int wake_up_all (int *) ;

void kernfs_put_active(struct kernfs_node *kn)
{
 int v;

 if (unlikely(!kn))
  return;

 if (kernfs_lockdep(kn))
  rwsem_release(&kn->dep_map, 1, _RET_IP_);
 v = atomic_dec_return(&kn->active);
 if (likely(v != KN_DEACTIVATED_BIAS))
  return;

 wake_up_all(&kernfs_root(kn)->deactivate_waitq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dep_map; int active; } ;


 int _RET_IP_ ;
 int atomic_inc (int *) ;
 scalar_t__ kernfs_lockdep (struct kernfs_node*) ;
 int rwsem_acquire (int *,int ,int,int ) ;

void kernfs_unbreak_active_protection(struct kernfs_node *kn)
{
 atomic_inc(&kn->active);
 if (kernfs_lockdep(kn))
  rwsem_acquire(&kn->dep_map, 0, 1, _RET_IP_);
}

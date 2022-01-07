
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dep_map; int active; } ;


 int _RET_IP_ ;
 int atomic_inc_unless_negative (int *) ;
 scalar_t__ kernfs_lockdep (struct kernfs_node*) ;
 int rwsem_acquire_read (int *,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

struct kernfs_node *kernfs_get_active(struct kernfs_node *kn)
{
 if (unlikely(!kn))
  return ((void*)0);

 if (!atomic_inc_unless_negative(&kn->active))
  return ((void*)0);

 if (kernfs_lockdep(kn))
  rwsem_acquire_read(&kn->dep_map, 0, 1, _RET_IP_);
 return kn;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct mesh_path {int state_lock; int next_hop; } ;


 int lockdep_is_held (int *) ;
 struct sta_info* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline struct sta_info *
next_hop_deref_protected(struct mesh_path *mpath)
{
 return rcu_dereference_protected(mpath->next_hop,
      lockdep_is_held(&mpath->state_lock));
}

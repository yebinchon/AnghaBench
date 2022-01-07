
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_3__ {int locator_match; } ;
struct ila_xlat_params {TYPE_1__ ip; } ;
struct TYPE_4__ {int rhash_table; } ;
struct ila_net {TYPE_2__ xlat; } ;
struct ila_map {int node; int next; } ;
typedef int spinlock_t ;


 int ENOENT ;
 scalar_t__ ila_cmp_params (struct ila_map*,struct ila_xlat_params*) ;
 int * ila_get_lock (struct ila_net*,int ) ;
 int ila_net_id ;
 int ila_release (struct ila_map*) ;
 int lockdep_is_held (int *) ;
 struct ila_net* net_generic (struct net*,int ) ;
 int rcu_assign_pointer (int ,int ) ;
 struct ila_map* rcu_dereference_protected (int ,int ) ;
 struct ila_map* rhashtable_lookup_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int rhashtable_replace_fast (int *,int *,int *,int ) ;
 int rht_params ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ila_del_mapping(struct net *net, struct ila_xlat_params *xp)
{
 struct ila_net *ilan = net_generic(net, ila_net_id);
 struct ila_map *ila, *head, *prev;
 spinlock_t *lock = ila_get_lock(ilan, xp->ip.locator_match);
 int err = -ENOENT;

 spin_lock(lock);

 head = rhashtable_lookup_fast(&ilan->xlat.rhash_table,
          &xp->ip.locator_match, rht_params);
 ila = head;

 prev = ((void*)0);

 while (ila) {
  if (ila_cmp_params(ila, xp)) {
   prev = ila;
   ila = rcu_dereference_protected(ila->next,
       lockdep_is_held(lock));
   continue;
  }

  err = 0;

  if (prev) {

   rcu_assign_pointer(prev->next, ila->next);
  } else {



   head = rcu_dereference_protected(ila->next,
        lockdep_is_held(lock));
   if (head) {



    err = rhashtable_replace_fast(
     &ilan->xlat.rhash_table, &ila->node,
     &head->node, rht_params);
    if (err)
     goto out;
   } else {

    err = rhashtable_remove_fast(
      &ilan->xlat.rhash_table,
      &ila->node, rht_params);
   }
  }

  ila_release(ila);

  break;
 }

out:
 spin_unlock(lock);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_4__ {int locator_match; } ;
struct ila_xlat_params {TYPE_2__ ip; } ;
struct TYPE_3__ {int hooks_registered; int rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;
struct ila_map {int node; int next; struct ila_xlat_params xp; } ;
typedef int spinlock_t ;


 int ARRAY_SIZE (int ) ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RCU_INIT_POINTER (int ,struct ila_map*) ;
 int ila_cmp_params (struct ila_map*,struct ila_xlat_params*) ;
 int * ila_get_lock (struct ila_net*,int ) ;
 int ila_init_saved_csum (TYPE_2__*) ;
 int ila_net_id ;
 int ila_nf_hook_ops ;
 int ila_order (struct ila_map*) ;
 int kfree (struct ila_map*) ;
 struct ila_map* kzalloc (int,int ) ;
 int lockdep_is_held (int *) ;
 struct ila_net* net_generic (struct net*,int ) ;
 int nf_register_net_hooks (struct net*,int ,int ) ;
 int rcu_assign_pointer (int ,struct ila_map*) ;
 struct ila_map* rcu_dereference_protected (int ,int ) ;
 struct ila_map* rhashtable_lookup_fast (int *,int *,int ) ;
 int rhashtable_lookup_insert_fast (int *,int *,int ) ;
 int rhashtable_replace_fast (int *,int *,int *,int ) ;
 int rht_params ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ila_add_mapping(struct net *net, struct ila_xlat_params *xp)
{
 struct ila_net *ilan = net_generic(net, ila_net_id);
 struct ila_map *ila, *head;
 spinlock_t *lock = ila_get_lock(ilan, xp->ip.locator_match);
 int err = 0, order;

 if (!ilan->xlat.hooks_registered) {



  err = nf_register_net_hooks(net, ila_nf_hook_ops,
         ARRAY_SIZE(ila_nf_hook_ops));
  if (err)
   return err;

  ilan->xlat.hooks_registered = 1;
 }

 ila = kzalloc(sizeof(*ila), GFP_KERNEL);
 if (!ila)
  return -ENOMEM;

 ila_init_saved_csum(&xp->ip);

 ila->xp = *xp;

 order = ila_order(ila);

 spin_lock(lock);

 head = rhashtable_lookup_fast(&ilan->xlat.rhash_table,
          &xp->ip.locator_match,
          rht_params);
 if (!head) {

  err = rhashtable_lookup_insert_fast(&ilan->xlat.rhash_table,
          &ila->node, rht_params);
 } else {
  struct ila_map *tila = head, *prev = ((void*)0);

  do {
   if (!ila_cmp_params(tila, xp)) {
    err = -EEXIST;
    goto out;
   }

   if (order > ila_order(tila))
    break;

   prev = tila;
   tila = rcu_dereference_protected(tila->next,
    lockdep_is_held(lock));
  } while (tila);

  if (prev) {

   RCU_INIT_POINTER(ila->next, tila);
   rcu_assign_pointer(prev->next, ila);
  } else {

   RCU_INIT_POINTER(ila->next, head);
   err = rhashtable_replace_fast(&ilan->xlat.rhash_table,
            &head->node,
            &ila->node, rht_params);
   if (err)
    goto out;
  }
 }

out:
 spin_unlock(lock);

 if (err)
  kfree(ila);

 return err;
}

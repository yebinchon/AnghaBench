
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* tbl; int list; } ;
struct rhashtable_iter {TYPE_1__ walker; scalar_t__ end_of_table; scalar_t__ skip; scalar_t__ slot; int * p; struct rhashtable* ht; } ;
struct rhashtable {int lock; int tbl; } ;
struct TYPE_4__ {int walkers; } ;


 int list_add (int *,int *) ;
 int lockdep_is_held (int *) ;
 TYPE_2__* rcu_dereference_protected (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rhashtable_walk_enter(struct rhashtable *ht, struct rhashtable_iter *iter)
{
 iter->ht = ht;
 iter->p = ((void*)0);
 iter->slot = 0;
 iter->skip = 0;
 iter->end_of_table = 0;

 spin_lock(&ht->lock);
 iter->walker.tbl =
  rcu_dereference_protected(ht->tbl, lockdep_is_held(&ht->lock));
 list_add(&iter->walker.list, &iter->walker.tbl->walkers);
 spin_unlock(&ht->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct dn_route {int dst; int dn_next; } ;
struct TYPE_2__ {int lock; int chain; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int dn_rt_hash_mask ;
 TYPE_1__* dn_rt_hash_table ;
 int dst_dev_put (int *) ;
 int dst_release (int *) ;
 struct dn_route* rcu_dereference_raw (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct dn_route* xchg (struct dn_route**,int *) ;

__attribute__((used)) static void dn_run_flush(struct timer_list *unused)
{
 int i;
 struct dn_route *rt, *next;

 for (i = 0; i < dn_rt_hash_mask; i++) {
  spin_lock_bh(&dn_rt_hash_table[i].lock);

  if ((rt = xchg((struct dn_route **)&dn_rt_hash_table[i].chain, ((void*)0))) == ((void*)0))
   goto nothing_to_declare;

  for(; rt; rt = next) {
   next = rcu_dereference_raw(rt->dn_next);
   RCU_INIT_POINTER(rt->dn_next, ((void*)0));
   dst_dev_put(&rt->dst);
   dst_release(&rt->dst);
  }

nothing_to_declare:
  spin_unlock_bh(&dn_rt_hash_table[i].lock);
 }
}

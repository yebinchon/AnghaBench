
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_lru_node {int dummy; } ;
struct bpf_lru_locallist {int next_steal; int lock; } ;
struct bpf_common_lru {int local_list; } ;
struct bpf_lru {struct bpf_common_lru common_lru; } ;


 int __local_list_add_pending (struct bpf_lru*,struct bpf_lru_locallist*,int,struct bpf_lru_node*,int ) ;
 struct bpf_lru_node* __local_list_pop_free (struct bpf_lru_locallist*) ;
 struct bpf_lru_node* __local_list_pop_pending (struct bpf_lru*,struct bpf_lru_locallist*) ;
 int bpf_lru_list_pop_free_to_local (struct bpf_lru*,struct bpf_lru_locallist*) ;
 int get_next_cpu (int) ;
 struct bpf_lru_locallist* per_cpu_ptr (int ,int) ;
 int raw_smp_processor_id () ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct bpf_lru_node *bpf_common_lru_pop_free(struct bpf_lru *lru,
          u32 hash)
{
 struct bpf_lru_locallist *loc_l, *steal_loc_l;
 struct bpf_common_lru *clru = &lru->common_lru;
 struct bpf_lru_node *node;
 int steal, first_steal;
 unsigned long flags;
 int cpu = raw_smp_processor_id();

 loc_l = per_cpu_ptr(clru->local_list, cpu);

 raw_spin_lock_irqsave(&loc_l->lock, flags);

 node = __local_list_pop_free(loc_l);
 if (!node) {
  bpf_lru_list_pop_free_to_local(lru, loc_l);
  node = __local_list_pop_free(loc_l);
 }

 if (node)
  __local_list_add_pending(lru, loc_l, cpu, node, hash);

 raw_spin_unlock_irqrestore(&loc_l->lock, flags);

 if (node)
  return node;
 first_steal = loc_l->next_steal;
 steal = first_steal;
 do {
  steal_loc_l = per_cpu_ptr(clru->local_list, steal);

  raw_spin_lock_irqsave(&steal_loc_l->lock, flags);

  node = __local_list_pop_free(steal_loc_l);
  if (!node)
   node = __local_list_pop_pending(lru, steal_loc_l);

  raw_spin_unlock_irqrestore(&steal_loc_l->lock, flags);

  steal = get_next_cpu(steal);
 } while (!node && steal != first_steal);

 loc_l->next_steal = steal;

 if (node) {
  raw_spin_lock_irqsave(&loc_l->lock, flags);
  __local_list_add_pending(lru, loc_l, cpu, node, hash);
  raw_spin_unlock_irqrestore(&loc_l->lock, flags);
 }

 return node;
}

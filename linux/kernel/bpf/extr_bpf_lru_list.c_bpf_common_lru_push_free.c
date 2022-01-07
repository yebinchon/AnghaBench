
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_lru_node {scalar_t__ type; int list; scalar_t__ ref; int cpu; } ;
struct bpf_lru_locallist {int lock; } ;
struct TYPE_2__ {int lru_list; int local_list; } ;
struct bpf_lru {TYPE_1__ common_lru; } ;


 scalar_t__ BPF_LRU_LIST_T_FREE ;
 scalar_t__ BPF_LRU_LOCAL_LIST_T_FREE ;
 scalar_t__ BPF_LRU_LOCAL_LIST_T_PENDING ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int bpf_lru_list_push_free (int *,struct bpf_lru_node*) ;
 int list_move (int *,int ) ;
 int local_free_list (struct bpf_lru_locallist*) ;
 struct bpf_lru_locallist* per_cpu_ptr (int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void bpf_common_lru_push_free(struct bpf_lru *lru,
         struct bpf_lru_node *node)
{
 unsigned long flags;

 if (WARN_ON_ONCE(node->type == BPF_LRU_LIST_T_FREE) ||
     WARN_ON_ONCE(node->type == BPF_LRU_LOCAL_LIST_T_FREE))
  return;

 if (node->type == BPF_LRU_LOCAL_LIST_T_PENDING) {
  struct bpf_lru_locallist *loc_l;

  loc_l = per_cpu_ptr(lru->common_lru.local_list, node->cpu);

  raw_spin_lock_irqsave(&loc_l->lock, flags);

  if (unlikely(node->type != BPF_LRU_LOCAL_LIST_T_PENDING)) {
   raw_spin_unlock_irqrestore(&loc_l->lock, flags);
   goto check_lru_list;
  }

  node->type = BPF_LRU_LOCAL_LIST_T_FREE;
  node->ref = 0;
  list_move(&node->list, local_free_list(loc_l));

  raw_spin_unlock_irqrestore(&loc_l->lock, flags);
  return;
 }

check_lru_list:
 bpf_lru_list_push_free(&lru->common_lru.lru_list, node);
}

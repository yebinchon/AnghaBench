
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_node {int cpu; } ;
struct bpf_lru_list {int lock; } ;
struct bpf_lru {int percpu_lru; } ;


 int BPF_LRU_LIST_T_FREE ;
 int __bpf_lru_node_move (struct bpf_lru_list*,struct bpf_lru_node*,int ) ;
 struct bpf_lru_list* per_cpu_ptr (int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bpf_percpu_lru_push_free(struct bpf_lru *lru,
         struct bpf_lru_node *node)
{
 struct bpf_lru_list *l;
 unsigned long flags;

 l = per_cpu_ptr(lru->percpu_lru, node->cpu);

 raw_spin_lock_irqsave(&l->lock, flags);

 __bpf_lru_node_move(l, node, BPF_LRU_LIST_T_FREE);

 raw_spin_unlock_irqrestore(&l->lock, flags);
}

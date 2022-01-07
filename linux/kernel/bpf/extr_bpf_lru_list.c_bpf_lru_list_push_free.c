
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_node {int type; } ;
struct bpf_lru_list {int lock; } ;


 int BPF_LRU_LIST_T_FREE ;
 int IS_LOCAL_LIST_TYPE (int ) ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int __bpf_lru_node_move (struct bpf_lru_list*,struct bpf_lru_node*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bpf_lru_list_push_free(struct bpf_lru_list *l,
       struct bpf_lru_node *node)
{
 unsigned long flags;

 if (WARN_ON_ONCE(IS_LOCAL_LIST_TYPE(node->type)))
  return;

 raw_spin_lock_irqsave(&l->lock, flags);
 __bpf_lru_node_move(l, node, BPF_LRU_LIST_T_FREE);
 raw_spin_unlock_irqrestore(&l->lock, flags);
}

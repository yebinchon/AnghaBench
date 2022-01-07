
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_node {int type; int list; scalar_t__ ref; } ;
struct bpf_lru_list {int * lists; } ;
typedef enum bpf_lru_list_type { ____Placeholder_bpf_lru_list_type } bpf_lru_list_type ;


 int IS_LOCAL_LIST_TYPE (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int bpf_lru_list_count_inc (struct bpf_lru_list*,int) ;
 int list_move (int *,int *) ;

__attribute__((used)) static void __bpf_lru_node_move_in(struct bpf_lru_list *l,
       struct bpf_lru_node *node,
       enum bpf_lru_list_type tgt_type)
{
 if (WARN_ON_ONCE(!IS_LOCAL_LIST_TYPE(node->type)) ||
     WARN_ON_ONCE(IS_LOCAL_LIST_TYPE(tgt_type)))
  return;

 bpf_lru_list_count_inc(l, tgt_type);
 node->type = tgt_type;
 node->ref = 0;
 list_move(&node->list, &l->lists[tgt_type]);
}

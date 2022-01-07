
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bpf_lru_node {size_t type; int list; scalar_t__ ref; } ;
struct bpf_lru_list {int * lists; } ;
struct TYPE_2__ {struct bpf_lru_list lru_list; } ;
struct bpf_lru {TYPE_1__ common_lru; } ;


 size_t BPF_LRU_LIST_T_FREE ;
 int list_add (int *,int *) ;

__attribute__((used)) static void bpf_common_lru_populate(struct bpf_lru *lru, void *buf,
        u32 node_offset, u32 elem_size,
        u32 nr_elems)
{
 struct bpf_lru_list *l = &lru->common_lru.lru_list;
 u32 i;

 for (i = 0; i < nr_elems; i++) {
  struct bpf_lru_node *node;

  node = (struct bpf_lru_node *)(buf + node_offset);
  node->type = BPF_LRU_LIST_T_FREE;
  node->ref = 0;
  list_add(&node->list, &l->lists[BPF_LRU_LIST_T_FREE]);
  buf += elem_size;
 }
}

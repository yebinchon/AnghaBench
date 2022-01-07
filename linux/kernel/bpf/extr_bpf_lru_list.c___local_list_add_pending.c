
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_lru_node {int cpu; int list; scalar_t__ ref; int type; } ;
struct bpf_lru_locallist {int dummy; } ;
struct bpf_lru {int hash_offset; } ;


 int BPF_LRU_LOCAL_LIST_T_PENDING ;
 int list_add (int *,int ) ;
 int local_pending_list (struct bpf_lru_locallist*) ;

__attribute__((used)) static void __local_list_add_pending(struct bpf_lru *lru,
         struct bpf_lru_locallist *loc_l,
         int cpu,
         struct bpf_lru_node *node,
         u32 hash)
{
 *(u32 *)((void *)node + lru->hash_offset) = hash;
 node->cpu = cpu;
 node->type = BPF_LRU_LOCAL_LIST_T_PENDING;
 node->ref = 0;
 list_add(&node->list, local_pending_list(loc_l));
}

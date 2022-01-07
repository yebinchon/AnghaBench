
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_list {scalar_t__* counts; } ;


 size_t BPF_LRU_LIST_T_ACTIVE ;
 size_t BPF_LRU_LIST_T_INACTIVE ;

__attribute__((used)) static bool bpf_lru_list_inactive_low(const struct bpf_lru_list *l)
{
 return l->counts[BPF_LRU_LIST_T_INACTIVE] <
  l->counts[BPF_LRU_LIST_T_ACTIVE];
}

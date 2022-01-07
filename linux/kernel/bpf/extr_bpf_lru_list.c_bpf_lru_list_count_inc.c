
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_list {int * counts; } ;
typedef enum bpf_lru_list_type { ____Placeholder_bpf_lru_list_type } bpf_lru_list_type ;


 int NR_BPF_LRU_LIST_COUNT ;

__attribute__((used)) static void bpf_lru_list_count_inc(struct bpf_lru_list *l,
       enum bpf_lru_list_type type)
{
 if (type < NR_BPF_LRU_LIST_COUNT)
  l->counts[type]++;
}

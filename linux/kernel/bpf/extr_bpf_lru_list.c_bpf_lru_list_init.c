
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_list {int lock; int * lists; int * next_inactive_rotation; scalar_t__* counts; } ;


 size_t BPF_LRU_LIST_T_INACTIVE ;
 int INIT_LIST_HEAD (int *) ;
 int NR_BPF_LRU_LIST_COUNT ;
 int NR_BPF_LRU_LIST_T ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static void bpf_lru_list_init(struct bpf_lru_list *l)
{
 int i;

 for (i = 0; i < NR_BPF_LRU_LIST_T; i++)
  INIT_LIST_HEAD(&l->lists[i]);

 for (i = 0; i < NR_BPF_LRU_LIST_COUNT; i++)
  l->counts[i] = 0;

 l->next_inactive_rotation = &l->lists[BPF_LRU_LIST_T_INACTIVE];

 raw_spin_lock_init(&l->lock);
}

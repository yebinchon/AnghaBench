
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lru_locallist {int next_steal; int lock; int * lists; } ;


 int INIT_LIST_HEAD (int *) ;
 int NR_BPF_LRU_LOCAL_LIST_T ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static void bpf_lru_locallist_init(struct bpf_lru_locallist *loc_l, int cpu)
{
 int i;

 for (i = 0; i < NR_BPF_LRU_LOCAL_LIST_T; i++)
  INIT_LIST_HEAD(&loc_l->lists[i]);

 loc_l->next_steal = cpu;

 raw_spin_lock_init(&loc_l->lock);
}

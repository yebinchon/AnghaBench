
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bucket {int lock; int list; } ;
struct bpf_sk_storage_map {int dummy; } ;
struct bpf_sk_storage_elem {int map_node; } ;
struct TYPE_2__ {int smap; } ;


 int RCU_INIT_POINTER (int ,struct bpf_sk_storage_map*) ;
 TYPE_1__* SDATA (struct bpf_sk_storage_elem*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int raw_spin_lock_bh (int *) ;
 int raw_spin_unlock_bh (int *) ;
 struct bucket* select_bucket (struct bpf_sk_storage_map*,struct bpf_sk_storage_elem*) ;

__attribute__((used)) static void selem_link_map(struct bpf_sk_storage_map *smap,
      struct bpf_sk_storage_elem *selem)
{
 struct bucket *b = select_bucket(smap, selem);

 raw_spin_lock_bh(&b->lock);
 RCU_INIT_POINTER(SDATA(selem)->smap, smap);
 hlist_add_head_rcu(&selem->map_node, &b->list);
 raw_spin_unlock_bh(&b->lock);
}

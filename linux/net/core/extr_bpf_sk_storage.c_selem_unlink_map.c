
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bucket {int lock; } ;
struct bpf_sk_storage_map {int dummy; } ;
struct bpf_sk_storage_elem {int map_node; } ;
struct TYPE_2__ {int smap; } ;


 TYPE_1__* SDATA (struct bpf_sk_storage_elem*) ;
 int hlist_del_init_rcu (int *) ;
 scalar_t__ likely (int ) ;
 int raw_spin_lock_bh (int *) ;
 int raw_spin_unlock_bh (int *) ;
 struct bpf_sk_storage_map* rcu_dereference (int ) ;
 struct bucket* select_bucket (struct bpf_sk_storage_map*,struct bpf_sk_storage_elem*) ;
 int selem_linked_to_map (struct bpf_sk_storage_elem*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void selem_unlink_map(struct bpf_sk_storage_elem *selem)
{
 struct bpf_sk_storage_map *smap;
 struct bucket *b;

 if (unlikely(!selem_linked_to_map(selem)))

  return;

 smap = rcu_dereference(SDATA(selem)->smap);
 b = select_bucket(smap, selem);
 raw_spin_lock_bh(&b->lock);
 if (likely(selem_linked_to_map(selem)))
  hlist_del_init_rcu(&selem->map_node);
 raw_spin_unlock_bh(&b->lock);
}

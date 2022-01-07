
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_bpf_storage; int sk_omem_alloc; } ;
struct bpf_sk_storage_map {int elem_size; size_t cache_idx; } ;
struct bpf_sk_storage_elem {int snode; } ;
struct bpf_sk_storage {int * cache; struct sock* sk; int list; } ;
struct TYPE_3__ {int smap; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 TYPE_1__* SDATA (struct bpf_sk_storage_elem*) ;
 int atomic_sub (int,int *) ;
 int hlist_del_init_rcu (int *) ;
 int hlist_is_singular_node (int *,int *) ;
 int kfree_rcu (struct bpf_sk_storage_elem*,int ) ;
 int rcu ;
 TYPE_1__* rcu_access_pointer (int ) ;
 struct bpf_sk_storage_map* rcu_dereference (int ) ;

__attribute__((used)) static bool __selem_unlink_sk(struct bpf_sk_storage *sk_storage,
         struct bpf_sk_storage_elem *selem,
         bool uncharge_omem)
{
 struct bpf_sk_storage_map *smap;
 bool free_sk_storage;
 struct sock *sk;

 smap = rcu_dereference(SDATA(selem)->smap);
 sk = sk_storage->sk;




 if (uncharge_omem)
  atomic_sub(smap->elem_size, &sk->sk_omem_alloc);

 free_sk_storage = hlist_is_singular_node(&selem->snode,
       &sk_storage->list);
 if (free_sk_storage) {
  atomic_sub(sizeof(struct bpf_sk_storage), &sk->sk_omem_alloc);
  sk_storage->sk = ((void*)0);

  RCU_INIT_POINTER(sk->sk_bpf_storage, ((void*)0));
 }
 hlist_del_init_rcu(&selem->snode);
 if (rcu_access_pointer(sk_storage->cache[smap->cache_idx]) ==
     SDATA(selem))
  RCU_INIT_POINTER(sk_storage->cache[smap->cache_idx], ((void*)0));

 kfree_rcu(selem, rcu);

 return free_sk_storage;
}

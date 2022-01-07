
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sk_storage_elem {int sk_storage; } ;
struct bpf_sk_storage {int lock; } ;


 int __selem_unlink_sk (struct bpf_sk_storage*,struct bpf_sk_storage_elem*,int) ;
 int kfree_rcu (struct bpf_sk_storage*,int ) ;
 scalar_t__ likely (int ) ;
 int raw_spin_lock_bh (int *) ;
 int raw_spin_unlock_bh (int *) ;
 int rcu ;
 struct bpf_sk_storage* rcu_dereference (int ) ;
 int selem_linked_to_sk (struct bpf_sk_storage_elem*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void selem_unlink_sk(struct bpf_sk_storage_elem *selem)
{
 struct bpf_sk_storage *sk_storage;
 bool free_sk_storage = 0;

 if (unlikely(!selem_linked_to_sk(selem)))

  return;

 sk_storage = rcu_dereference(selem->sk_storage);
 raw_spin_lock_bh(&sk_storage->lock);
 if (likely(selem_linked_to_sk(selem)))
  free_sk_storage = __selem_unlink_sk(sk_storage, selem, 1);
 raw_spin_unlock_bh(&sk_storage->lock);

 if (free_sk_storage)
  kfree_rcu(sk_storage, rcu);
}

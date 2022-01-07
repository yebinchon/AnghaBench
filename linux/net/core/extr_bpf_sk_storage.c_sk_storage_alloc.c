
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_omem_alloc; int sk_bpf_storage; } ;
struct bpf_sk_storage_map {int dummy; } ;
struct bpf_sk_storage_elem {int dummy; } ;
struct bpf_sk_storage {struct sock* sk; int lock; int list; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int __GFP_NOWARN ;
 int __selem_link_sk (struct bpf_sk_storage*,struct bpf_sk_storage_elem*) ;
 int atomic_sub (int,int *) ;
 struct bpf_sk_storage* cmpxchg (struct bpf_sk_storage**,int *,struct bpf_sk_storage*) ;
 int kfree (struct bpf_sk_storage*) ;
 struct bpf_sk_storage* kzalloc (int,int) ;
 int omem_charge (struct sock*,int) ;
 int raw_spin_lock_init (int *) ;
 int selem_link_map (struct bpf_sk_storage_map*,struct bpf_sk_storage_elem*) ;
 int selem_unlink_map (struct bpf_sk_storage_elem*) ;
 scalar_t__ unlikely (struct bpf_sk_storage*) ;

__attribute__((used)) static int sk_storage_alloc(struct sock *sk,
       struct bpf_sk_storage_map *smap,
       struct bpf_sk_storage_elem *first_selem)
{
 struct bpf_sk_storage *prev_sk_storage, *sk_storage;
 int err;

 err = omem_charge(sk, sizeof(*sk_storage));
 if (err)
  return err;

 sk_storage = kzalloc(sizeof(*sk_storage), GFP_ATOMIC | __GFP_NOWARN);
 if (!sk_storage) {
  err = -ENOMEM;
  goto uncharge;
 }
 INIT_HLIST_HEAD(&sk_storage->list);
 raw_spin_lock_init(&sk_storage->lock);
 sk_storage->sk = sk;

 __selem_link_sk(sk_storage, first_selem);
 selem_link_map(smap, first_selem);
 prev_sk_storage = cmpxchg((struct bpf_sk_storage **)&sk->sk_bpf_storage,
      ((void*)0), sk_storage);
 if (unlikely(prev_sk_storage)) {
  selem_unlink_map(first_selem);
  err = -EAGAIN;
  goto uncharge;
 }

 return 0;

uncharge:
 kfree(sk_storage);
 atomic_sub(sizeof(*sk_storage), &sk->sk_omem_alloc);
 return err;
}

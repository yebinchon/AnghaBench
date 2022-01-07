
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sock {int sk_omem_alloc; int sk_bpf_storage; } ;
struct bpf_sk_storage_map {int elem_size; } ;
struct bpf_sk_storage_elem {int dummy; } ;
struct bpf_sk_storage_data {int data; } ;
struct bpf_sk_storage {int lock; int list; } ;
struct bpf_map {int dummy; } ;


 int BPF_EXIST ;
 int BPF_F_LOCK ;
 int BPF_NOEXIST ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 struct bpf_sk_storage_data* ERR_PTR (int) ;
 struct bpf_sk_storage_data* SDATA (struct bpf_sk_storage_elem*) ;
 struct bpf_sk_storage_elem* SELEM (struct bpf_sk_storage_data*) ;
 int __selem_link_sk (struct bpf_sk_storage*,struct bpf_sk_storage_elem*) ;
 int __selem_unlink_sk (struct bpf_sk_storage*,struct bpf_sk_storage_elem*,int) ;
 struct bpf_sk_storage_data* __sk_storage_lookup (struct bpf_sk_storage*,struct bpf_sk_storage_map*,int) ;
 int atomic_sub (int ,int *) ;
 int check_flags (struct bpf_sk_storage_data*,int) ;
 int copy_map_value_locked (struct bpf_map*,int ,void*,int) ;
 int hlist_empty (int *) ;
 int kfree (struct bpf_sk_storage_elem*) ;
 int map_value_has_spin_lock (struct bpf_map*) ;
 int raw_spin_lock_bh (int *) ;
 int raw_spin_unlock_bh (int *) ;
 struct bpf_sk_storage* rcu_dereference (int ) ;
 struct bpf_sk_storage_elem* selem_alloc (struct bpf_sk_storage_map*,struct sock*,void*,int) ;
 int selem_link_map (struct bpf_sk_storage_map*,struct bpf_sk_storage_elem*) ;
 scalar_t__ selem_linked_to_sk (struct bpf_sk_storage_elem*) ;
 int selem_unlink_map (struct bpf_sk_storage_elem*) ;
 int sk_storage_alloc (struct sock*,struct bpf_sk_storage_map*,struct bpf_sk_storage_elem*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct bpf_sk_storage_data *sk_storage_update(struct sock *sk,
           struct bpf_map *map,
           void *value,
           u64 map_flags)
{
 struct bpf_sk_storage_data *old_sdata = ((void*)0);
 struct bpf_sk_storage_elem *selem;
 struct bpf_sk_storage *sk_storage;
 struct bpf_sk_storage_map *smap;
 int err;


 if (unlikely((map_flags & ~BPF_F_LOCK) > BPF_EXIST) ||

     unlikely((map_flags & BPF_F_LOCK) && !map_value_has_spin_lock(map)))
  return ERR_PTR(-EINVAL);

 smap = (struct bpf_sk_storage_map *)map;
 sk_storage = rcu_dereference(sk->sk_bpf_storage);
 if (!sk_storage || hlist_empty(&sk_storage->list)) {

  err = check_flags(((void*)0), map_flags);
  if (err)
   return ERR_PTR(err);

  selem = selem_alloc(smap, sk, value, 1);
  if (!selem)
   return ERR_PTR(-ENOMEM);

  err = sk_storage_alloc(sk, smap, selem);
  if (err) {
   kfree(selem);
   atomic_sub(smap->elem_size, &sk->sk_omem_alloc);
   return ERR_PTR(err);
  }

  return SDATA(selem);
 }

 if ((map_flags & BPF_F_LOCK) && !(map_flags & BPF_NOEXIST)) {




  old_sdata = __sk_storage_lookup(sk_storage, smap, 0);
  err = check_flags(old_sdata, map_flags);
  if (err)
   return ERR_PTR(err);
  if (old_sdata && selem_linked_to_sk(SELEM(old_sdata))) {
   copy_map_value_locked(map, old_sdata->data,
           value, 0);
   return old_sdata;
  }
 }

 raw_spin_lock_bh(&sk_storage->lock);


 if (unlikely(hlist_empty(&sk_storage->list))) {





  err = -EAGAIN;
  goto unlock_err;
 }

 old_sdata = __sk_storage_lookup(sk_storage, smap, 0);
 err = check_flags(old_sdata, map_flags);
 if (err)
  goto unlock_err;

 if (old_sdata && (map_flags & BPF_F_LOCK)) {
  copy_map_value_locked(map, old_sdata->data, value, 0);
  selem = SELEM(old_sdata);
  goto unlock;
 }
 selem = selem_alloc(smap, sk, value, !old_sdata);
 if (!selem) {
  err = -ENOMEM;
  goto unlock_err;
 }


 selem_link_map(smap, selem);


 __selem_link_sk(sk_storage, selem);


 if (old_sdata) {
  selem_unlink_map(SELEM(old_sdata));
  __selem_unlink_sk(sk_storage, SELEM(old_sdata), 0);
 }

unlock:
 raw_spin_unlock_bh(&sk_storage->lock);
 return SDATA(selem);

unlock_err:
 raw_spin_unlock_bh(&sk_storage->lock);
 return ERR_PTR(err);
}

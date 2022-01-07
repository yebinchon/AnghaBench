
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sock {int sk_callback_lock; int sk_user_data; } ;
struct reuseport_array {int * ptrs; } ;
struct bpf_map {size_t max_entries; } ;


 int E2BIG ;
 int ENOENT ;
 int RCU_INIT_POINTER (int ,int *) ;
 int WRITE_ONCE (int ,int *) ;
 int lockdep_is_held (int *) ;
 int rcu_access_pointer (int ) ;
 struct sock* rcu_dereference_protected (int ,int ) ;
 struct reuseport_array* reuseport_array (struct bpf_map*) ;
 int reuseport_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int reuseport_array_delete_elem(struct bpf_map *map, void *key)
{
 struct reuseport_array *array = reuseport_array(map);
 u32 index = *(u32 *)key;
 struct sock *sk;
 int err;

 if (index >= map->max_entries)
  return -E2BIG;

 if (!rcu_access_pointer(array->ptrs[index]))
  return -ENOENT;

 spin_lock_bh(&reuseport_lock);

 sk = rcu_dereference_protected(array->ptrs[index],
           lockdep_is_held(&reuseport_lock));
 if (sk) {
  write_lock_bh(&sk->sk_callback_lock);
  WRITE_ONCE(sk->sk_user_data, ((void*)0));
  RCU_INIT_POINTER(array->ptrs[index], ((void*)0));
  write_unlock_bh(&sk->sk_callback_lock);
  err = 0;
 } else {
  err = -ENOENT;
 }

 spin_unlock_bh(&reuseport_lock);

 return err;
}

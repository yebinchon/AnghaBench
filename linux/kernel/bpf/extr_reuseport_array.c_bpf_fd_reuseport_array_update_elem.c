
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct socket {int file; struct sock_reuseport* sk; } ;
struct sock_reuseport {int sk_callback_lock; int sk_user_data; int sk_reuseport_cb; } ;
struct sock {int sk_callback_lock; int sk_user_data; int sk_reuseport_cb; } ;
struct reuseport_array {int * ptrs; } ;
struct bpf_map {size_t max_entries; int value_size; } ;


 int BPF_EXIST ;
 int E2BIG ;
 int EINVAL ;
 int S32_MAX ;
 int WRITE_ONCE (int ,int *) ;
 int fput (int ) ;
 int lockdep_is_held (int *) ;
 struct sock_reuseport* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct sock_reuseport*) ;
 struct sock_reuseport* rcu_dereference_protected (int ,int ) ;
 struct reuseport_array* reuseport_array (struct bpf_map*) ;
 int reuseport_array_update_check (struct reuseport_array*,struct sock_reuseport*,struct sock_reuseport*,struct sock_reuseport*,int) ;
 int reuseport_get_id (struct sock_reuseport*) ;
 int reuseport_lock ;
 struct socket* sockfd_lookup (int,int*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int bpf_fd_reuseport_array_update_elem(struct bpf_map *map, void *key,
           void *value, u64 map_flags)
{
 struct reuseport_array *array = reuseport_array(map);
 struct sock *free_osk = ((void*)0), *osk, *nsk;
 struct sock_reuseport *reuse;
 u32 index = *(u32 *)key;
 struct socket *socket;
 int err, fd;

 if (map_flags > BPF_EXIST)
  return -EINVAL;

 if (index >= map->max_entries)
  return -E2BIG;

 if (map->value_size == sizeof(u64)) {
  u64 fd64 = *(u64 *)value;

  if (fd64 > S32_MAX)
   return -EINVAL;
  fd = fd64;
 } else {
  fd = *(int *)value;
 }

 socket = sockfd_lookup(fd, &err);
 if (!socket)
  return err;

 nsk = socket->sk;
 if (!nsk) {
  err = -EINVAL;
  goto put_file;
 }


 err = reuseport_array_update_check(array, nsk,
        rcu_access_pointer(array->ptrs[index]),
        rcu_access_pointer(nsk->sk_reuseport_cb),
        map_flags);
 if (err)
  goto put_file;

 spin_lock_bh(&reuseport_lock);





 write_lock_bh(&nsk->sk_callback_lock);

 osk = rcu_dereference_protected(array->ptrs[index],
     lockdep_is_held(&reuseport_lock));
 reuse = rcu_dereference_protected(nsk->sk_reuseport_cb,
       lockdep_is_held(&reuseport_lock));
 err = reuseport_array_update_check(array, nsk, osk, reuse, map_flags);
 if (err)
  goto put_file_unlock;


 err = reuseport_get_id(reuse);
 if (err < 0)
  goto put_file_unlock;

 WRITE_ONCE(nsk->sk_user_data, &array->ptrs[index]);
 rcu_assign_pointer(array->ptrs[index], nsk);
 free_osk = osk;
 err = 0;

put_file_unlock:
 write_unlock_bh(&nsk->sk_callback_lock);

 if (free_osk) {
  write_lock_bh(&free_osk->sk_callback_lock);
  WRITE_ONCE(free_osk->sk_user_data, ((void*)0));
  write_unlock_bh(&free_osk->sk_callback_lock);
 }

 spin_unlock_bh(&reuseport_lock);
put_file:
 fput(socket->file);
 return err;
}

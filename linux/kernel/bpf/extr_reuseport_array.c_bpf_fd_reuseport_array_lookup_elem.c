
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sock {int dummy; } ;
struct bpf_map {int value_size; } ;


 int ENOENT ;
 int ENOSPC ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sock* reuseport_array_lookup_elem (struct bpf_map*,void*) ;
 int sock_gen_cookie (struct sock*) ;

int bpf_fd_reuseport_array_lookup_elem(struct bpf_map *map, void *key,
           void *value)
{
 struct sock *sk;
 int err;

 if (map->value_size != sizeof(u64))
  return -ENOSPC;

 rcu_read_lock();
 sk = reuseport_array_lookup_elem(map, key);
 if (sk) {
  *(u64 *)value = sock_gen_cookie(sk);
  err = 0;
 } else {
  err = -ENOENT;
 }
 rcu_read_unlock();

 return err;
}

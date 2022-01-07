
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct socket {int file; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct bpf_map {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ TCP_ESTABLISHED ;
 int fput (int ) ;
 int sock_hash_update_common (struct bpf_map*,void*,struct sock*,int ) ;
 int sock_map_sk_acquire (struct sock*) ;
 int sock_map_sk_is_suitable (struct sock*) ;
 int sock_map_sk_release (struct sock*) ;
 struct socket* sockfd_lookup (int ,int*) ;

__attribute__((used)) static int sock_hash_update_elem(struct bpf_map *map, void *key,
     void *value, u64 flags)
{
 u32 ufd = *(u32 *)value;
 struct socket *sock;
 struct sock *sk;
 int ret;

 sock = sockfd_lookup(ufd, &ret);
 if (!sock)
  return ret;
 sk = sock->sk;
 if (!sk) {
  ret = -EINVAL;
  goto out;
 }
 if (!sock_map_sk_is_suitable(sk) ||
     sk->sk_state != TCP_ESTABLISHED) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 sock_map_sk_acquire(sk);
 ret = sock_hash_update_common(map, key, sk, flags);
 sock_map_sk_release(sk);
out:
 fput(sock->file);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* bind ) (struct sock*,struct sockaddr*,int) ;} ;


 int BPF_CGROUP_RUN_PROG_INET4_BIND (struct sock*,struct sockaddr*) ;
 int EINVAL ;
 int __inet_bind (struct sock*,struct sockaddr*,int,int,int) ;
 int stub1 (struct sock*,struct sockaddr*,int) ;

int inet_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sock *sk = sock->sk;
 int err;


 if (sk->sk_prot->bind) {
  return sk->sk_prot->bind(sk, uaddr, addr_len);
 }
 if (addr_len < sizeof(struct sockaddr_in))
  return -EINVAL;




 err = BPF_CGROUP_RUN_PROG_INET4_BIND(sk, uaddr);
 if (err)
  return err;

 return __inet_bind(sk, uaddr, addr_len, 0, 1);
}

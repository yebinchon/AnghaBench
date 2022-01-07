
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr {int dummy; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* bind ) (struct sock*,struct sockaddr*,int) ;} ;


 int BPF_CGROUP_RUN_PROG_INET6_BIND (struct sock*,struct sockaddr*) ;
 int EINVAL ;
 int SIN6_LEN_RFC2133 ;
 int __inet6_bind (struct sock*,struct sockaddr*,int,int,int) ;
 int stub1 (struct sock*,struct sockaddr*,int) ;

int inet6_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sock *sk = sock->sk;
 int err = 0;


 if (sk->sk_prot->bind)
  return sk->sk_prot->bind(sk, uaddr, addr_len);

 if (addr_len < SIN6_LEN_RFC2133)
  return -EINVAL;




 err = BPF_CGROUP_RUN_PROG_INET6_BIND(sk, uaddr);
 if (err)
  return err;

 return __inet6_bind(sk, uaddr, addr_len, 0, 1);
}

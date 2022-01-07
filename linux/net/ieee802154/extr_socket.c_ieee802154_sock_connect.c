
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* disconnect ) (struct sock*,int) ;int (* connect ) (struct sock*,struct sockaddr*,int) ;} ;


 scalar_t__ AF_UNSPEC ;
 int EINVAL ;
 int stub1 (struct sock*,int) ;
 int stub2 (struct sock*,struct sockaddr*,int) ;

__attribute__((used)) static int ieee802154_sock_connect(struct socket *sock, struct sockaddr *uaddr,
       int addr_len, int flags)
{
 struct sock *sk = sock->sk;

 if (addr_len < sizeof(uaddr->sa_family))
  return -EINVAL;

 if (uaddr->sa_family == AF_UNSPEC)
  return sk->sk_prot->disconnect(sk, flags);

 return sk->sk_prot->connect(sk, uaddr, addr_len);
}

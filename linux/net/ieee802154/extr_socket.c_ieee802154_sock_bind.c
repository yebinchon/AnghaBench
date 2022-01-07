
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr {int dummy; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* bind ) (struct sock*,struct sockaddr*,int) ;} ;


 int sock_no_bind (struct socket*,struct sockaddr*,int) ;
 int stub1 (struct sock*,struct sockaddr*,int) ;

__attribute__((used)) static int ieee802154_sock_bind(struct socket *sock, struct sockaddr *uaddr,
    int addr_len)
{
 struct sock *sk = sock->sk;

 if (sk->sk_prot->bind)
  return sk->sk_prot->bind(sk, uaddr, addr_len);

 return sock_no_bind(sock, uaddr, addr_len);
}

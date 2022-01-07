
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct msghdr {int dummy; } ;


 int __tipc_sendmsg (struct socket*,struct msghdr*,size_t) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int tipc_sendmsg(struct socket *sock,
   struct msghdr *m, size_t dsz)
{
 struct sock *sk = sock->sk;
 int ret;

 lock_sock(sk);
 ret = __tipc_sendmsg(sock, m, dsz);
 release_sock(sk);

 return ret;
}

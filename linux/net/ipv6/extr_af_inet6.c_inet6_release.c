
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int EINVAL ;
 int inet_release (struct socket*) ;
 int ipv6_sock_ac_close (struct sock*) ;
 int ipv6_sock_mc_close (struct sock*) ;

int inet6_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 if (!sk)
  return -EINVAL;


 ipv6_sock_mc_close(sk);


 ipv6_sock_ac_close(sk);

 return inet_release(sock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 int __ip6_datagram_connect (struct sock*,struct sockaddr*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

int ip6_datagram_connect(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
 int res;

 lock_sock(sk);
 res = __ip6_datagram_connect(sk, uaddr, addr_len);
 release_sock(sk);
 return res;
}

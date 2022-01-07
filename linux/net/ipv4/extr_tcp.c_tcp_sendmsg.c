
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct msghdr {int dummy; } ;


 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int tcp_sendmsg_locked (struct sock*,struct msghdr*,size_t) ;

int tcp_sendmsg(struct sock *sk, struct msghdr *msg, size_t size)
{
 int ret;

 lock_sock(sk);
 ret = tcp_sendmsg_locked(sk, msg, size);
 release_sock(sk);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct msghdr {int dummy; } ;


 int ENOTCONN ;
 scalar_t__ TCP_ESTABLISHED ;
 int unix_dgram_recvmsg (struct socket*,struct msghdr*,size_t,int) ;

__attribute__((used)) static int unix_seqpacket_recvmsg(struct socket *sock, struct msghdr *msg,
      size_t size, int flags)
{
 struct sock *sk = sock->sk;

 if (sk->sk_state != TCP_ESTABLISHED)
  return -ENOTCONN;

 return unix_dgram_recvmsg(sock, msg, size, flags);
}

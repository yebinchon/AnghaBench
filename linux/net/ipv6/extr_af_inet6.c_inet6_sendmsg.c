
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int sendmsg; } ;


 int EAGAIN ;
 int INDIRECT_CALL_2 (int ,int ,int ,struct sock*,struct msghdr*,size_t) ;
 int inet_send_prepare (struct sock*) ;
 int tcp_sendmsg ;
 int udpv6_sendmsg ;
 scalar_t__ unlikely (int ) ;

int inet6_sendmsg(struct socket *sock, struct msghdr *msg, size_t size)
{
 struct sock *sk = sock->sk;

 if (unlikely(inet_send_prepare(sk)))
  return -EAGAIN;

 return INDIRECT_CALL_2(sk->sk_prot->sendmsg, tcp_sendmsg, udpv6_sendmsg,
          sk, msg, size);
}

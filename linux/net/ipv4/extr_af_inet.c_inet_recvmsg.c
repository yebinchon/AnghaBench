
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct msghdr {int msg_namelen; } ;
struct TYPE_2__ {int recvmsg; } ;


 int INDIRECT_CALL_2 (int ,int ,int ,struct sock*,struct msghdr*,size_t,int,int,int*) ;
 int MSG_DONTWAIT ;
 int MSG_ERRQUEUE ;
 scalar_t__ likely (int) ;
 int sock_rps_record_flow (struct sock*) ;
 int tcp_recvmsg ;
 int udp_recvmsg ;

int inet_recvmsg(struct socket *sock, struct msghdr *msg, size_t size,
   int flags)
{
 struct sock *sk = sock->sk;
 int addr_len = 0;
 int err;

 if (likely(!(flags & MSG_ERRQUEUE)))
  sock_rps_record_flow(sk);

 err = INDIRECT_CALL_2(sk->sk_prot->recvmsg, tcp_recvmsg, udp_recvmsg,
         sk, msg, size, flags & MSG_DONTWAIT,
         flags & ~MSG_DONTWAIT, &addr_len);
 if (err >= 0)
  msg->msg_namelen = addr_len;
 return err;
}

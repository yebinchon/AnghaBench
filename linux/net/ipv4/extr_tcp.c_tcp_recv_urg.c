
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int urg_data; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; } ;
struct msghdr {int msg_flags; } ;


 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int ENOTCONN ;
 int MSG_OOB ;
 int MSG_PEEK ;
 int MSG_TRUNC ;
 int RCV_SHUTDOWN ;
 int SOCK_DONE ;
 int SOCK_URGINLINE ;
 scalar_t__ TCP_CLOSE ;
 int TCP_URG_READ ;
 int TCP_URG_VALID ;
 int memcpy_to_msg (struct msghdr*,char*,int) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static int tcp_recv_urg(struct sock *sk, struct msghdr *msg, int len, int flags)
{
 struct tcp_sock *tp = tcp_sk(sk);


 if (sock_flag(sk, SOCK_URGINLINE) || !tp->urg_data ||
     tp->urg_data == TCP_URG_READ)
  return -EINVAL;

 if (sk->sk_state == TCP_CLOSE && !sock_flag(sk, SOCK_DONE))
  return -ENOTCONN;

 if (tp->urg_data & TCP_URG_VALID) {
  int err = 0;
  char c = tp->urg_data;

  if (!(flags & MSG_PEEK))
   tp->urg_data = TCP_URG_READ;


  msg->msg_flags |= MSG_OOB;

  if (len > 0) {
   if (!(flags & MSG_TRUNC))
    err = memcpy_to_msg(msg, &c, 1);
   len = 1;
  } else
   msg->msg_flags |= MSG_TRUNC;

  return err ? -EFAULT : len;
 }

 if (sk->sk_state == TCP_CLOSE || (sk->sk_shutdown & RCV_SHUTDOWN))
  return 0;







 return -EAGAIN;
}

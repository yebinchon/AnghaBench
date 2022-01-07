
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct msghdr {scalar_t__ msg_namelen; } ;


 int ENOTCONN ;
 scalar_t__ TCP_ESTABLISHED ;
 int sock_error (struct sock*) ;
 int unix_dgram_sendmsg (struct socket*,struct msghdr*,size_t) ;

__attribute__((used)) static int unix_seqpacket_sendmsg(struct socket *sock, struct msghdr *msg,
      size_t len)
{
 int err;
 struct sock *sk = sock->sk;

 err = sock_error(sk);
 if (err)
  return err;

 if (sk->sk_state != TCP_ESTABLISHED)
  return -ENOTCONN;

 if (msg->msg_namelen)
  msg->msg_namelen = 0;

 return unix_dgram_sendmsg(sock, msg, len);
}

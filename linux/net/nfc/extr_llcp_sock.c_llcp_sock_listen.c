
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;


 int EBADFD ;
 scalar_t__ LLCP_BOUND ;
 scalar_t__ LLCP_LISTEN ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 int lock_sock (struct sock*) ;
 int pr_debug (char*,...) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int llcp_sock_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 int ret = 0;

 pr_debug("sk %p backlog %d\n", sk, backlog);

 lock_sock(sk);

 if ((sock->type != SOCK_SEQPACKET && sock->type != SOCK_STREAM) ||
     sk->sk_state != LLCP_BOUND) {
  ret = -EBADFD;
  goto error;
 }

 sk->sk_max_ack_backlog = backlog;
 sk->sk_ack_backlog = 0;

 pr_debug("Socket listening\n");
 sk->sk_state = LLCP_LISTEN;

error:
 release_sock(sk);

 return ret;
}

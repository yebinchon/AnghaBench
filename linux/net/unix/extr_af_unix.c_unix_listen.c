
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sock {int peer_wait; int addr; } ;
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; } ;
struct pid {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_LISTEN ;
 int init_peercred (struct sock*) ;
 int put_pid (struct pid*) ;
 struct unix_sock* unix_sk (struct sock*) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static int unix_listen(struct socket *sock, int backlog)
{
 int err;
 struct sock *sk = sock->sk;
 struct unix_sock *u = unix_sk(sk);
 struct pid *old_pid = ((void*)0);

 err = -EOPNOTSUPP;
 if (sock->type != SOCK_STREAM && sock->type != SOCK_SEQPACKET)
  goto out;
 err = -EINVAL;
 if (!u->addr)
  goto out;
 unix_state_lock(sk);
 if (sk->sk_state != TCP_CLOSE && sk->sk_state != TCP_LISTEN)
  goto out_unlock;
 if (backlog > sk->sk_max_ack_backlog)
  wake_up_interruptible_all(&u->peer_wait);
 sk->sk_max_ack_backlog = backlog;
 sk->sk_state = TCP_LISTEN;

 init_peercred(sk);
 err = 0;

out_unlock:
 unix_state_unlock(sk);
 put_pid(old_pid);
out:
 return err;
}

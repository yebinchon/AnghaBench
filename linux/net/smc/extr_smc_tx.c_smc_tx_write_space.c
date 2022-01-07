
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_wq {scalar_t__ fasync_list; int wait; } ;
struct socket {int flags; } ;
struct sock {int sk_shutdown; int sk_wq; struct socket* sk_socket; } ;
struct TYPE_2__ {int sndbuf_space; } ;
struct smc_sock {TYPE_1__ conn; } ;


 int EPOLLOUT ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 int POLL_OUT ;
 int SEND_SHUTDOWN ;
 int SOCK_NOSPACE ;
 int SOCK_WAKE_SPACE ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 struct socket_wq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skwq_has_sleeper (struct socket_wq*) ;
 struct smc_sock* smc_sk (struct sock*) ;
 int sock_wake_async (struct socket_wq*,int ,int ) ;
 int wake_up_interruptible_poll (int *,int) ;

__attribute__((used)) static void smc_tx_write_space(struct sock *sk)
{
 struct socket *sock = sk->sk_socket;
 struct smc_sock *smc = smc_sk(sk);
 struct socket_wq *wq;


 if (atomic_read(&smc->conn.sndbuf_space) && sock) {
  clear_bit(SOCK_NOSPACE, &sock->flags);
  rcu_read_lock();
  wq = rcu_dereference(sk->sk_wq);
  if (skwq_has_sleeper(wq))
   wake_up_interruptible_poll(&wq->wait,
         EPOLLOUT | EPOLLWRNORM |
         EPOLLWRBAND);
  if (wq && wq->fasync_list && !(sk->sk_shutdown & SEND_SHUTDOWN))
   sock_wake_async(wq, SOCK_WAKE_SPACE, POLL_OUT);
  rcu_read_unlock();
 }
}

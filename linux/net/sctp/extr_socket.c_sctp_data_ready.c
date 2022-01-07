
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {int wait; } ;
struct sock {int sk_wq; } ;


 int EPOLLIN ;
 int EPOLLRDBAND ;
 int EPOLLRDNORM ;
 int POLL_IN ;
 int SOCK_WAKE_WAITD ;
 struct socket_wq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_wake_async (struct sock*,int ,int ) ;
 scalar_t__ skwq_has_sleeper (struct socket_wq*) ;
 int wake_up_interruptible_sync_poll (int *,int) ;

void sctp_data_ready(struct sock *sk)
{
 struct socket_wq *wq;

 rcu_read_lock();
 wq = rcu_dereference(sk->sk_wq);
 if (skwq_has_sleeper(wq))
  wake_up_interruptible_sync_poll(&wq->wait, EPOLLIN |
      EPOLLRDNORM | EPOLLRDBAND);
 sk_wake_async(sk, SOCK_WAKE_WAITD, POLL_IN);
 rcu_read_unlock();
}

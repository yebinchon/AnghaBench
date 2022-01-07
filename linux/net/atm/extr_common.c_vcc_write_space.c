
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {int wait; } ;
struct sock {int sk_wq; } ;


 int POLL_OUT ;
 int SOCK_WAKE_SPACE ;
 struct socket_wq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_wake_async (struct sock*,int ,int ) ;
 scalar_t__ skwq_has_sleeper (struct socket_wq*) ;
 scalar_t__ vcc_writable (struct sock*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void vcc_write_space(struct sock *sk)
{
 struct socket_wq *wq;

 rcu_read_lock();

 if (vcc_writable(sk)) {
  wq = rcu_dereference(sk->sk_wq);
  if (skwq_has_sleeper(wq))
   wake_up_interruptible(&wq->wait);

  sk_wake_async(sk, SOCK_WAKE_SPACE, POLL_OUT);
 }

 rcu_read_unlock();
}

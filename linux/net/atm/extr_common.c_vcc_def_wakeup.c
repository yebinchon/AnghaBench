
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {int wait; } ;
struct sock {int sk_wq; } ;


 struct socket_wq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skwq_has_sleeper (struct socket_wq*) ;
 int wake_up (int *) ;

__attribute__((used)) static void vcc_def_wakeup(struct sock *sk)
{
 struct socket_wq *wq;

 rcu_read_lock();
 wq = rcu_dereference(sk->sk_wq);
 if (skwq_has_sleeper(wq))
  wake_up(&wq->wait);
 rcu_read_unlock();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_wq {int wait; } ;
struct sock {int sk_shutdown; int sk_wq; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {int wait; TYPE_1__ base; } ;


 int POLL_OUT ;
 int SEND_SHUTDOWN ;
 int SOCK_WAKE_SPACE ;
 struct socket_wq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ sctp_writeable (struct sock*) ;
 scalar_t__ sctp_wspace (struct sctp_association*) ;
 int sock_wake_async (struct socket_wq*,int ,int ) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void __sctp_write_space(struct sctp_association *asoc)
{
 struct sock *sk = asoc->base.sk;

 if (sctp_wspace(asoc) <= 0)
  return;

 if (waitqueue_active(&asoc->wait))
  wake_up_interruptible(&asoc->wait);

 if (sctp_writeable(sk)) {
  struct socket_wq *wq;

  rcu_read_lock();
  wq = rcu_dereference(sk->sk_wq);
  if (wq) {
   if (waitqueue_active(&wq->wait))
    wake_up_interruptible(&wq->wait);





   if (!(sk->sk_shutdown & SEND_SHUTDOWN))
    sock_wake_async(wq, SOCK_WAKE_SPACE, POLL_OUT);
  }
  rcu_read_unlock();
 }
}

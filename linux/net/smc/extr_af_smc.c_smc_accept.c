
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_receive_queue; } ;
struct TYPE_6__ {int bytes_to_rcv; } ;
struct TYPE_4__ {scalar_t__ sk_state; } ;
struct smc_sock {int sockopt_defer_accept; TYPE_3__ conn; TYPE_2__* clcsock; scalar_t__ use_fallback; TYPE_1__ sk; } ;
struct TYPE_5__ {struct sock* sk; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int EINVAL ;
 int MSEC_PER_SEC ;
 int O_NONBLOCK ;
 scalar_t__ SMC_LISTEN ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue_exclusive (int ,int *) ;
 int atomic_read (int *) ;
 int current ;
 int lock_sock (struct sock*) ;
 long msecs_to_jiffies (int) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 int sched_annotate_sleep () ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sk_wait_data (struct sock*,long*,int *) ;
 scalar_t__ skb_queue_empty (int *) ;
 struct sock* smc_accept_dequeue (struct sock*,struct socket*) ;
 int smc_rx_data_available ;
 int smc_rx_wait (struct smc_sock*,long*,int ) ;
 struct smc_sock* smc_sk (struct sock*) ;
 int sock_error (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_intr_errno (long) ;
 int sock_put (struct sock*) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int wait ;

__attribute__((used)) static int smc_accept(struct socket *sock, struct socket *new_sock,
        int flags, bool kern)
{
 struct sock *sk = sock->sk, *nsk;
 DECLARE_WAITQUEUE(wait, current);
 struct smc_sock *lsmc;
 long timeo;
 int rc = 0;

 lsmc = smc_sk(sk);
 sock_hold(sk);
 lock_sock(sk);

 if (lsmc->sk.sk_state != SMC_LISTEN) {
  rc = -EINVAL;
  release_sock(sk);
  goto out;
 }


 timeo = sock_rcvtimeo(sk, flags & O_NONBLOCK);
 add_wait_queue_exclusive(sk_sleep(sk), &wait);
 while (!(nsk = smc_accept_dequeue(sk, new_sock))) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (!timeo) {
   rc = -EAGAIN;
   break;
  }
  release_sock(sk);
  timeo = schedule_timeout(timeo);

  sched_annotate_sleep();
  lock_sock(sk);
  if (signal_pending(current)) {
   rc = sock_intr_errno(timeo);
   break;
  }
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(sk_sleep(sk), &wait);

 if (!rc)
  rc = sock_error(nsk);
 release_sock(sk);
 if (rc)
  goto out;

 if (lsmc->sockopt_defer_accept && !(flags & O_NONBLOCK)) {

  timeo = msecs_to_jiffies(lsmc->sockopt_defer_accept *
        MSEC_PER_SEC);
  if (smc_sk(nsk)->use_fallback) {
   struct sock *clcsk = smc_sk(nsk)->clcsock->sk;

   lock_sock(clcsk);
   if (skb_queue_empty(&clcsk->sk_receive_queue))
    sk_wait_data(clcsk, &timeo, ((void*)0));
   release_sock(clcsk);
  } else if (!atomic_read(&smc_sk(nsk)->conn.bytes_to_rcv)) {
   lock_sock(nsk);
   smc_rx_wait(smc_sk(nsk), &timeo, smc_rx_data_available);
   release_sock(nsk);
  }
 }

out:
 sock_put(sk);
 return rc;
}

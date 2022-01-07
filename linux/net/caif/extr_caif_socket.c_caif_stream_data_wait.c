
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_shutdown; scalar_t__ sk_err; int sk_receive_queue; } ;


 scalar_t__ CAIF_CONNECTED ;
 int DEFINE_WAIT (int ) ;
 int RCV_SHUTDOWN ;
 int SOCKWQ_ASYNC_WAITDATA ;
 int SOCK_DEAD ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 int skb_queue_empty (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int wait ;

__attribute__((used)) static long caif_stream_data_wait(struct sock *sk, long timeo)
{
 DEFINE_WAIT(wait);
 lock_sock(sk);

 for (;;) {
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);

  if (!skb_queue_empty(&sk->sk_receive_queue) ||
   sk->sk_err ||
   sk->sk_state != CAIF_CONNECTED ||
   sock_flag(sk, SOCK_DEAD) ||
   (sk->sk_shutdown & RCV_SHUTDOWN) ||
   signal_pending(current) ||
   !timeo)
   break;

  sk_set_bit(SOCKWQ_ASYNC_WAITDATA, sk);
  release_sock(sk);
  timeo = schedule_timeout(timeo);
  lock_sock(sk);

  if (sock_flag(sk, SOCK_DEAD))
   break;

  sk_clear_bit(SOCKWQ_ASYNC_WAITDATA, sk);
 }

 finish_wait(sk_sleep(sk), &wait);
 release_sock(sk);
 return timeo;
}

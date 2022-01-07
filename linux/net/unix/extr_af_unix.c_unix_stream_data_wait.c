
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; scalar_t__ sk_err; int sk_receive_queue; } ;
struct sk_buff {unsigned int len; } ;


 int DEFINE_WAIT (int ) ;
 int RCV_SHUTDOWN ;
 int SOCKWQ_ASYNC_WAITDATA ;
 int SOCK_DEAD ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 long freezable_schedule_timeout (long) ;
 int prepare_to_wait (int ,int *,int ) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 struct sk_buff* skb_peek_tail (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;
 int wait ;

__attribute__((used)) static long unix_stream_data_wait(struct sock *sk, long timeo,
      struct sk_buff *last, unsigned int last_len,
      bool freezable)
{
 struct sk_buff *tail;
 DEFINE_WAIT(wait);

 unix_state_lock(sk);

 for (;;) {
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);

  tail = skb_peek_tail(&sk->sk_receive_queue);
  if (tail != last ||
      (tail && tail->len != last_len) ||
      sk->sk_err ||
      (sk->sk_shutdown & RCV_SHUTDOWN) ||
      signal_pending(current) ||
      !timeo)
   break;

  sk_set_bit(SOCKWQ_ASYNC_WAITDATA, sk);
  unix_state_unlock(sk);
  if (freezable)
   timeo = freezable_schedule_timeout(timeo);
  else
   timeo = schedule_timeout(timeo);
  unix_state_lock(sk);

  if (sock_flag(sk, SOCK_DEAD))
   break;

  sk_clear_bit(SOCKWQ_ASYNC_WAITDATA, sk);
 }

 finish_wait(sk_sleep(sk), &wait);
 unix_state_unlock(sk);
 return timeo;
}

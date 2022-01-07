
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int remove_wait_queue (int ,int *) ;
 int signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sk_stream_closing (struct sock*) ;
 scalar_t__ sk_wait_event (struct sock*,long*,int,int *) ;
 int wait ;
 int woken_wake_function ;

void sk_stream_wait_close(struct sock *sk, long timeout)
{
 if (timeout) {
  DEFINE_WAIT_FUNC(wait, woken_wake_function);

  add_wait_queue(sk_sleep(sk), &wait);

  do {
   if (sk_wait_event(sk, &timeout, !sk_stream_closing(sk), &wait))
    break;
  } while (!signal_pending(current) && timeout);

  remove_wait_queue(sk_sleep(sk), &wait);
 }
}

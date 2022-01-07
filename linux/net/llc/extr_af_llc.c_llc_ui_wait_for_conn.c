
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 scalar_t__ TCP_SYN_SENT ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int remove_wait_queue (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ sk_wait_event (struct sock*,long*,int,int *) ;
 int wait ;
 int woken_wake_function ;

__attribute__((used)) static bool llc_ui_wait_for_conn(struct sock *sk, long timeout)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);

 add_wait_queue(sk_sleep(sk), &wait);
 while (1) {
  if (sk_wait_event(sk, &timeout, sk->sk_state != TCP_SYN_SENT, &wait))
   break;
  if (signal_pending(current) || !timeout)
   break;
 }
 remove_wait_queue(sk_sleep(sk), &wait);
 return timeout;
}

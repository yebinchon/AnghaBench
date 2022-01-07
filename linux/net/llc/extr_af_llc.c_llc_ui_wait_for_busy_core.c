
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; } ;
struct llc_sock {int p_flag; int remote_busy_flag; int state; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int RCV_SHUTDOWN ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int llc_data_accept_state (int ) ;
 struct llc_sock* llc_sk (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ sk_wait_event (struct sock*,long*,int,int *) ;
 int wait ;
 int woken_wake_function ;

__attribute__((used)) static int llc_ui_wait_for_busy_core(struct sock *sk, long timeout)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 struct llc_sock *llc = llc_sk(sk);
 int rc;

 add_wait_queue(sk_sleep(sk), &wait);
 while (1) {
  rc = 0;
  if (sk_wait_event(sk, &timeout,
      (sk->sk_shutdown & RCV_SHUTDOWN) ||
      (!llc_data_accept_state(llc->state) &&
       !llc->remote_busy_flag &&
       !llc->p_flag), &wait))
   break;
  rc = -ERESTARTSYS;
  if (signal_pending(current))
   break;
  rc = -EAGAIN;
  if (!timeout)
   break;
 }
 remove_wait_queue(sk_sleep(sk), &wait);
 return rc;
}

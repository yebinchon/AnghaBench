
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_pending; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int remove_wait_queue (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ sk_wait_event (struct sock*,long*,int,int *) ;
 int sock_intr_errno (long) ;
 int wait ;
 int woken_wake_function ;

int wait_on_pending_writer(struct sock *sk, long *timeo)
{
 int rc = 0;
 DEFINE_WAIT_FUNC(wait, woken_wake_function);

 add_wait_queue(sk_sleep(sk), &wait);
 while (1) {
  if (!*timeo) {
   rc = -EAGAIN;
   break;
  }

  if (signal_pending(current)) {
   rc = sock_intr_errno(*timeo);
   break;
  }

  if (sk_wait_event(sk, timeo, !sk->sk_write_pending, &wait))
   break;
 }
 remove_wait_queue(sk_sleep(sk), &wait);
 return rc;
}

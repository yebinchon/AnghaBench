
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_err; int sk_write_pending; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (unsigned long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int wait ;

__attribute__((used)) static int dccp_wait_for_ccid(struct sock *sk, unsigned long delay)
{
 DEFINE_WAIT(wait);
 long remaining;

 prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
 sk->sk_write_pending++;
 release_sock(sk);

 remaining = schedule_timeout(delay);

 lock_sock(sk);
 sk->sk_write_pending--;
 finish_wait(sk_sleep(sk), &wait);

 if (signal_pending(current) || sk->sk_err)
  return -1;
 return remaining;
}

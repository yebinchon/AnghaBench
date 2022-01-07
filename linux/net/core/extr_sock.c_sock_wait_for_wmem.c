
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_shutdown; scalar_t__ sk_err; int sk_sndbuf; int sk_wmem_alloc; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int flags; } ;


 int DEFINE_WAIT (int ) ;
 scalar_t__ READ_ONCE (int ) ;
 int SEND_SHUTDOWN ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait (int ,int *,int ) ;
 scalar_t__ refcount_read (int *) ;
 long schedule_timeout (long) ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 int wait ;

__attribute__((used)) static long sock_wait_for_wmem(struct sock *sk, long timeo)
{
 DEFINE_WAIT(wait);

 sk_clear_bit(SOCKWQ_ASYNC_NOSPACE, sk);
 for (;;) {
  if (!timeo)
   break;
  if (signal_pending(current))
   break;
  set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
  if (refcount_read(&sk->sk_wmem_alloc) < READ_ONCE(sk->sk_sndbuf))
   break;
  if (sk->sk_shutdown & SEND_SHUTDOWN)
   break;
  if (sk->sk_err)
   break;
  timeo = schedule_timeout(timeo);
 }
 finish_wait(sk_sleep(sk), &wait);
 return timeo;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; int sk_err; scalar_t__ sk_state; } ;
struct caifsock {struct sock sk; } ;


 scalar_t__ CAIF_CONNECTED ;
 int DEFINE_WAIT (int ) ;
 int ECONNRESET ;
 int EPIPE ;
 int ERESTARTSYS ;
 int ETIMEDOUT ;
 int SHUTDOWN_MASK ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait (int ,int *,int ) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ sock_writeable (struct sock*) ;
 scalar_t__ tx_flow_is_on (struct caifsock*) ;
 int wait ;

__attribute__((used)) static long caif_wait_for_flow_on(struct caifsock *cf_sk,
      int wait_writeable, long timeo, int *err)
{
 struct sock *sk = &cf_sk->sk;
 DEFINE_WAIT(wait);
 for (;;) {
  *err = 0;
  if (tx_flow_is_on(cf_sk) &&
   (!wait_writeable || sock_writeable(&cf_sk->sk)))
   break;
  *err = -ETIMEDOUT;
  if (!timeo)
   break;
  *err = -ERESTARTSYS;
  if (signal_pending(current))
   break;
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
  *err = -ECONNRESET;
  if (sk->sk_shutdown & SHUTDOWN_MASK)
   break;
  *err = -sk->sk_err;
  if (sk->sk_err)
   break;
  *err = -EPIPE;
  if (cf_sk->sk.sk_state != CAIF_CONNECTED)
   break;
  timeo = schedule_timeout(timeo);
 }
 finish_wait(sk_sleep(sk), &wait);
 return timeo;
}

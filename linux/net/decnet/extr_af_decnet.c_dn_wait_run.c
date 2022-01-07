
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_socket; } ;
struct dn_scp {scalar_t__ state; } ;
struct TYPE_2__ {int state; } ;


 int DEFINE_WAIT (int ) ;
 scalar_t__ DN_CC ;
 scalar_t__ DN_CI ;
 scalar_t__ DN_RUN ;
 struct dn_scp* DN_SK (struct sock*) ;
 int EALREADY ;
 int ETIMEDOUT ;
 int SS_CONNECTED ;
 int SS_UNCONNECTED ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 int wait ;

__attribute__((used)) static int dn_wait_run(struct sock *sk, long *timeo)
{
 struct dn_scp *scp = DN_SK(sk);
 DEFINE_WAIT(wait);
 int err = 0;

 if (scp->state == DN_RUN)
  goto out;

 if (!*timeo)
  return -EALREADY;

 prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
 for(;;) {
  release_sock(sk);
  if (scp->state == DN_CI || scp->state == DN_CC)
   *timeo = schedule_timeout(*timeo);
  lock_sock(sk);
  err = 0;
  if (scp->state == DN_RUN)
   break;
  err = sock_error(sk);
  if (err)
   break;
  err = sock_intr_errno(*timeo);
  if (signal_pending(current))
   break;
  err = -ETIMEDOUT;
  if (!*timeo)
   break;
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
 }
 finish_wait(sk_sleep(sk), &wait);
out:
 if (err == 0) {
  sk->sk_socket->state = SS_CONNECTED;
 } else if (scp->state != DN_CI && scp->state != DN_CC) {
  sk->sk_socket->state = SS_UNCONNECTED;
 }
 return err;
}

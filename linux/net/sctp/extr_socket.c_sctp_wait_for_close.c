
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ep; } ;
struct TYPE_3__ {int asocs; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 scalar_t__ list_empty (int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 TYPE_2__* sctp_sk (struct sock*) ;
 int signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int wait ;

__attribute__((used)) static void sctp_wait_for_close(struct sock *sk, long timeout)
{
 DEFINE_WAIT(wait);

 do {
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
  if (list_empty(&sctp_sk(sk)->ep->asocs))
   break;
  release_sock(sk);
  timeout = schedule_timeout(timeout);
  lock_sock(sk);
 } while (!signal_pending(current) && timeout);

 finish_wait(sk_sleep(sk), &wait);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strparser {int stopped; struct sock* sk; int msg_timer_work; } ;
struct sock {int sk_err; int (* sk_error_report ) (struct sock*) ;} ;


 int cancel_delayed_work (int *) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void strp_abort_strp(struct strparser *strp, int err)
{


 cancel_delayed_work(&strp->msg_timer_work);

 if (strp->stopped)
  return;

 strp->stopped = 1;

 if (strp->sk) {
  struct sock *sk = strp->sk;


  sk->sk_err = -err;
  sk->sk_error_report(sk);
 }
}

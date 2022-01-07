
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct hidp_session {TYPE_2__* ctrl_sock; TYPE_1__* intr_sock; } ;
struct TYPE_6__ {void* sk_err; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;
struct TYPE_4__ {TYPE_3__* sk; } ;


 void* EUNATCH ;
 struct hidp_session* from_timer (int ,struct timer_list*,int ) ;
 int hidp_session_terminate (struct hidp_session*) ;
 struct hidp_session* session ;
 int sk_sleep (TYPE_3__*) ;
 int timer ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static void hidp_idle_timeout(struct timer_list *t)
{
 struct hidp_session *session = from_timer(session, t, timer);
 session->intr_sock->sk->sk_err = EUNATCH;
 session->ctrl_sock->sk->sk_err = EUNATCH;
 wake_up_interruptible(sk_sleep(session->intr_sock->sk));
 wake_up_interruptible(sk_sleep(session->ctrl_sock->sk));

 hidp_session_terminate(session);
}

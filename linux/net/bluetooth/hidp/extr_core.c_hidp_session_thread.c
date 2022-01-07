
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hidp_session {int user; int conn; int report_queue; TYPE_2__* intr_sock; int state_queue; int state; TYPE_1__* ctrl_sock; } ;
struct TYPE_4__ {int sk; } ;
struct TYPE_3__ {int sk; } ;


 int BT_DBG (char*,struct hidp_session*) ;
 int DEFINE_WAIT_FUNC (int ,int ) ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int add_wait_queue (int ,int *) ;
 int atomic_inc (int *) ;
 int ctrl_wait ;
 int current ;
 int hidp_del_timer (struct hidp_session*) ;
 int hidp_session_get (struct hidp_session*) ;
 int hidp_session_put (struct hidp_session*) ;
 int hidp_session_run (struct hidp_session*) ;
 int hidp_session_wake_function ;
 int hidp_set_timer (struct hidp_session*) ;
 int intr_wait ;
 int l2cap_unregister_user (int ,int *) ;
 int module_put_and_exit (int ) ;
 int remove_wait_queue (int ,int *) ;
 int set_user_nice (int ,int) ;
 int sk_sleep (int ) ;
 int smp_mb () ;
 int wake_up (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int hidp_session_thread(void *arg)
{
 struct hidp_session *session = arg;
 DEFINE_WAIT_FUNC(ctrl_wait, hidp_session_wake_function);
 DEFINE_WAIT_FUNC(intr_wait, hidp_session_wake_function);

 BT_DBG("session %p", session);


 hidp_session_get(session);
 __module_get(THIS_MODULE);
 set_user_nice(current, -15);
 hidp_set_timer(session);

 add_wait_queue(sk_sleep(session->ctrl_sock->sk), &ctrl_wait);
 add_wait_queue(sk_sleep(session->intr_sock->sk), &intr_wait);


 smp_mb();


 atomic_inc(&session->state);
 wake_up(&session->state_queue);


 hidp_session_run(session);


 remove_wait_queue(sk_sleep(session->intr_sock->sk), &intr_wait);
 remove_wait_queue(sk_sleep(session->intr_sock->sk), &ctrl_wait);
 wake_up_interruptible(&session->report_queue);
 hidp_del_timer(session);
 l2cap_unregister_user(session->conn, &session->user);
 hidp_session_put(session);

 module_put_and_exit(0);
 return 0;
}

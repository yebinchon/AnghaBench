
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct cmtp_session {int flags; TYPE_1__* sock; int terminate; } ;
struct TYPE_2__ {int file; struct sock* sk; } ;


 int BIT (int ) ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct cmtp_session*) ;
 int CMTP_LOOPBACK ;
 int DEFINE_WAIT_FUNC (int ,int ) ;
 int MAX_SCHEDULE_TIMEOUT ;
 int TASK_INTERRUPTIBLE ;
 int __cmtp_unlink_session (struct cmtp_session*) ;
 int add_wait_queue (int ,int *) ;
 scalar_t__ atomic_read (int *) ;
 int cmtp_detach_device (struct cmtp_session*) ;
 int cmtp_process_transmit (struct cmtp_session*) ;
 int cmtp_recv_frame (struct cmtp_session*,struct sk_buff*) ;
 int cmtp_session_sem ;
 int current ;
 int down_write (int *) ;
 int fput (int ) ;
 int kfree (struct cmtp_session*) ;
 int kfree_skb (struct sk_buff*) ;
 int module_put_and_exit (int ) ;
 int remove_wait_queue (int ,int *) ;
 int set_user_nice (int ,int) ;
 int sk_sleep (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_linearize (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int up_write (int *) ;
 int wait ;
 int wait_woken (int *,int ,int ) ;
 int woken_wake_function ;

__attribute__((used)) static int cmtp_session(void *arg)
{
 struct cmtp_session *session = arg;
 struct sock *sk = session->sock->sk;
 struct sk_buff *skb;
 DEFINE_WAIT_FUNC(wait, woken_wake_function);

 BT_DBG("session %p", session);

 set_user_nice(current, -15);

 add_wait_queue(sk_sleep(sk), &wait);
 while (1) {
  if (atomic_read(&session->terminate))
   break;
  if (sk->sk_state != BT_CONNECTED)
   break;

  while ((skb = skb_dequeue(&sk->sk_receive_queue))) {
   skb_orphan(skb);
   if (!skb_linearize(skb))
    cmtp_recv_frame(session, skb);
   else
    kfree_skb(skb);
  }

  cmtp_process_transmit(session);





  wait_woken(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);
 }
 remove_wait_queue(sk_sleep(sk), &wait);

 down_write(&cmtp_session_sem);

 if (!(session->flags & BIT(CMTP_LOOPBACK)))
  cmtp_detach_device(session);

 fput(session->sock->file);

 __cmtp_unlink_session(session);

 up_write(&cmtp_session_sem);

 kfree(session);
 module_put_and_exit(0);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct hidp_session {int terminate; TYPE_1__* ctrl_sock; int ctrl_transmit; TYPE_1__* intr_sock; int intr_transmit; } ;
struct TYPE_2__ {struct sock* sk; } ;


 scalar_t__ BT_CONNECTED ;
 int DEFINE_WAIT_FUNC (int ,int ) ;
 int MAX_SCHEDULE_TIMEOUT ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int hidp_process_transmit (struct hidp_session*,int *,TYPE_1__*) ;
 int hidp_recv_ctrl_frame (struct hidp_session*,struct sk_buff*) ;
 int hidp_recv_intr_frame (struct hidp_session*,struct sk_buff*) ;
 int hidp_session_wq ;
 int kfree_skb (struct sk_buff*) ;
 int remove_wait_queue (int *,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_linearize (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int wait ;
 int wait_woken (int *,int ,int ) ;
 int woken_wake_function ;

__attribute__((used)) static void hidp_session_run(struct hidp_session *session)
{
 struct sock *ctrl_sk = session->ctrl_sock->sk;
 struct sock *intr_sk = session->intr_sock->sk;
 struct sk_buff *skb;
 DEFINE_WAIT_FUNC(wait, woken_wake_function);

 add_wait_queue(&hidp_session_wq, &wait);
 for (;;) {
  if (atomic_read(&session->terminate))
   break;

  if (ctrl_sk->sk_state != BT_CONNECTED ||
      intr_sk->sk_state != BT_CONNECTED)
   break;


  while ((skb = skb_dequeue(&intr_sk->sk_receive_queue))) {
   skb_orphan(skb);
   if (!skb_linearize(skb))
    hidp_recv_intr_frame(session, skb);
   else
    kfree_skb(skb);
  }


  hidp_process_transmit(session, &session->intr_transmit,
          session->intr_sock);


  while ((skb = skb_dequeue(&ctrl_sk->sk_receive_queue))) {
   skb_orphan(skb);
   if (!skb_linearize(skb))
    hidp_recv_ctrl_frame(session, skb);
   else
    kfree_skb(skb);
  }


  hidp_process_transmit(session, &session->ctrl_transmit,
          session->ctrl_sock);





  wait_woken(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);
 }
 remove_wait_queue(&hidp_session_wq, &wait);

 atomic_inc(&session->terminate);
}

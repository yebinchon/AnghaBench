
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int len; int data; } ;
struct hidp_session {int dummy; } ;


 int BT_DBG (char*,struct hidp_session*) ;
 int EAGAIN ;
 int hidp_send_frame (struct socket*,int ,int ) ;
 int hidp_session_terminate (struct hidp_session*) ;
 int hidp_set_timer (struct hidp_session*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 int skb_queue_head (struct sk_buff_head*,struct sk_buff*) ;

__attribute__((used)) static void hidp_process_transmit(struct hidp_session *session,
      struct sk_buff_head *transmit,
      struct socket *sock)
{
 struct sk_buff *skb;
 int ret;

 BT_DBG("session %p", session);

 while ((skb = skb_dequeue(transmit))) {
  ret = hidp_send_frame(sock, skb->data, skb->len);
  if (ret == -EAGAIN) {
   skb_queue_head(transmit, skb);
   break;
  } else if (ret < 0) {
   hidp_session_terminate(session);
   kfree_skb(skb);
   break;
  }

  hidp_set_timer(session);
  kfree_skb(skb);
 }
}

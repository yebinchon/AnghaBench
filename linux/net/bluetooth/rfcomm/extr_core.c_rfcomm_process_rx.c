
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_err; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct rfcomm_session {int state; struct socket* sock; } ;


 scalar_t__ BT_CLOSED ;
 int BT_DBG (char*,struct rfcomm_session*,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct rfcomm_session* rfcomm_recv_frame (struct rfcomm_session*,struct sk_buff*) ;
 struct rfcomm_session* rfcomm_session_close (struct rfcomm_session*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_linearize (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_queue_len (int *) ;

__attribute__((used)) static struct rfcomm_session *rfcomm_process_rx(struct rfcomm_session *s)
{
 struct socket *sock = s->sock;
 struct sock *sk = sock->sk;
 struct sk_buff *skb;

 BT_DBG("session %p state %ld qlen %d", s, s->state, skb_queue_len(&sk->sk_receive_queue));


 while ((skb = skb_dequeue(&sk->sk_receive_queue))) {
  skb_orphan(skb);
  if (!skb_linearize(skb)) {
   s = rfcomm_recv_frame(s, skb);
   if (!s)
    break;
  } else {
   kfree_skb(skb);
  }
 }

 if (s && (sk->sk_state == BT_CLOSED))
  s = rfcomm_session_close(s, sk->sk_err);

 return s;
}

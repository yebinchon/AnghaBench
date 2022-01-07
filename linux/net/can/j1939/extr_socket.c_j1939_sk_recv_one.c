
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * sk; } ;
struct j1939_sock {int sk; } ;
struct j1939_sk_buff_cb {int msg_flags; } ;


 int GFP_ATOMIC ;
 int MSG_DONTROUTE ;
 int can_skb_set_owner (struct sk_buff*,int *) ;
 int j1939_sk_recv_match_one (struct j1939_sock*,struct j1939_sk_buff_cb const*) ;
 void* j1939_skb_to_cb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pr_warn (char*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ sock_queue_rcv_skb (int *,struct sk_buff*) ;

__attribute__((used)) static void j1939_sk_recv_one(struct j1939_sock *jsk, struct sk_buff *oskb)
{
 const struct j1939_sk_buff_cb *oskcb = j1939_skb_to_cb(oskb);
 struct j1939_sk_buff_cb *skcb;
 struct sk_buff *skb;

 if (oskb->sk == &jsk->sk)
  return;

 if (!j1939_sk_recv_match_one(jsk, oskcb))
  return;

 skb = skb_clone(oskb, GFP_ATOMIC);
 if (!skb) {
  pr_warn("skb clone failed\n");
  return;
 }
 can_skb_set_owner(skb, oskb->sk);

 skcb = j1939_skb_to_cb(skb);
 skcb->msg_flags &= ~(MSG_DONTROUTE);
 if (skb->sk)
  skcb->msg_flags |= MSG_DONTROUTE;

 if (sock_queue_rcv_skb(&jsk->sk, skb) < 0)
  kfree_skb(skb);
}

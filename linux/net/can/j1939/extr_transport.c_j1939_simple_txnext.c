
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct j1939_session {struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int J1939_ERRQUEUE_SCHED ;
 int J1939_SIMPLE_ECHO_TIMEOUT_MS ;
 int can_skb_set_owner (struct sk_buff*,int ) ;
 int j1939_send_one (struct j1939_priv*,struct sk_buff*) ;
 struct sk_buff* j1939_session_skb_find (struct j1939_session*) ;
 int j1939_sk_errqueue (struct j1939_session*,int ) ;
 int j1939_sk_queue_activate_next (struct j1939_session*) ;
 int j1939_tp_set_rxtimeout (struct j1939_session*,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

__attribute__((used)) static int j1939_simple_txnext(struct j1939_session *session)
{
 struct j1939_priv *priv = session->priv;
 struct sk_buff *se_skb = j1939_session_skb_find(session);
 struct sk_buff *skb;
 int ret;

 if (!se_skb)
  return 0;

 skb = skb_clone(se_skb, GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;

 can_skb_set_owner(skb, se_skb->sk);

 j1939_tp_set_rxtimeout(session, J1939_SIMPLE_ECHO_TIMEOUT_MS);

 ret = j1939_send_one(priv, skb);
 if (ret)
  return ret;

 j1939_sk_errqueue(session, J1939_ERRQUEUE_SCHED);
 j1939_sk_queue_activate_next(session);

 return 0;
}

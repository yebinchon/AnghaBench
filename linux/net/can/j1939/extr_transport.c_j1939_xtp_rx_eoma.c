
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct j1939_sk_buff_cb {int addr; } ;
struct j1939_session {int dummy; } ;
struct j1939_priv {int dummy; } ;


 struct j1939_session* j1939_session_get_by_addr (struct j1939_priv*,int *,int,int) ;
 int j1939_session_put (struct j1939_session*) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 int j1939_xtp_rx_eoma_one (struct j1939_session*,struct sk_buff*) ;

__attribute__((used)) static void
j1939_xtp_rx_eoma(struct j1939_priv *priv, struct sk_buff *skb,
    bool transmitter)
{
 struct j1939_sk_buff_cb *skcb = j1939_skb_to_cb(skb);
 struct j1939_session *session;

 session = j1939_session_get_by_addr(priv, &skcb->addr, 1,
         transmitter);
 if (!session)
  return;

 j1939_xtp_rx_eoma_one(session, skb);
 j1939_session_put(session);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__* data; } ;
struct j1939_sk_buff_cb {int addr; } ;
struct j1939_session {int transmission; scalar_t__ last_cmd; } ;
struct j1939_priv {int dummy; } ;


 scalar_t__ J1939_TP_CMD_BAM ;
 struct j1939_session* j1939_session_get_by_addr (struct j1939_priv*,int *,int,int) ;
 int j1939_session_put (struct j1939_session*) ;
 int j1939_session_txtimer_cancel (struct j1939_session*) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 int j1939_tp_schedule_txtimer (struct j1939_session*,int ) ;
 int j1939_tp_set_rxtimeout (struct j1939_session*,int) ;
 scalar_t__ j1939_xtp_rx_rts_session_active (struct j1939_session*,struct sk_buff*) ;
 struct j1939_session* j1939_xtp_rx_rts_session_new (struct j1939_priv*,struct sk_buff*) ;

__attribute__((used)) static void j1939_xtp_rx_rts(struct j1939_priv *priv, struct sk_buff *skb,
        bool transmitter)
{
 struct j1939_sk_buff_cb *skcb = j1939_skb_to_cb(skb);
 struct j1939_session *session;
 u8 cmd = skb->data[0];

 session = j1939_session_get_by_addr(priv, &skcb->addr, 0,
         transmitter);

 if (!session) {
  if (transmitter) {
   return;
  }
  session = j1939_xtp_rx_rts_session_new(priv, skb);
  if (!session)
   return;
 } else {
  if (j1939_xtp_rx_rts_session_active(session, skb)) {
   j1939_session_put(session);
   return;
  }
 }
 session->last_cmd = cmd;

 j1939_tp_set_rxtimeout(session, 1250);

 if (cmd != J1939_TP_CMD_BAM && !session->transmission) {
  j1939_session_txtimer_cancel(session);
  j1939_tp_schedule_txtimer(session, 0);
 }

 j1939_session_put(session);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_2__ {int pgn; void* type; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int dummy; } ;


 void* J1939_ETP ;




 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 int j1939_tp_cmd_recv (struct j1939_priv*,struct sk_buff*) ;
 int j1939_tp_im_involved_anydir (struct j1939_sk_buff_cb*) ;
 int j1939_xtp_rx_dat (struct j1939_priv*,struct sk_buff*) ;

int j1939_tp_recv(struct j1939_priv *priv, struct sk_buff *skb)
{
 struct j1939_sk_buff_cb *skcb = j1939_skb_to_cb(skb);

 if (!j1939_tp_im_involved_anydir(skcb))
  return 0;

 switch (skcb->addr.pgn) {
 case 130:
  skcb->addr.type = J1939_ETP;

 case 128:
  j1939_xtp_rx_dat(priv, skb);
  break;

 case 131:
  skcb->addr.type = J1939_ETP;

 case 129:
  if (skb->len < 8)
   return 0;

  j1939_tp_cmd_recv(priv, skb);
  break;
 default:
  return 0;
 }
 return 1;
}

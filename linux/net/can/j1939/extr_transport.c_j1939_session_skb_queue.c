
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {size_t da; } ;
struct j1939_sk_buff_cb {int flags; TYPE_2__ addr; } ;
struct j1939_session {int skb_queue; struct j1939_priv* priv; } ;
struct j1939_priv {TYPE_1__* ents; } ;
struct TYPE_3__ {scalar_t__ nusers; } ;


 int J1939_ECU_LOCAL_DST ;
 int J1939_ECU_LOCAL_SRC ;
 int j1939_ac_fixup (struct j1939_priv*,struct sk_buff*) ;
 scalar_t__ j1939_address_is_unicast (size_t) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void j1939_session_skb_queue(struct j1939_session *session,
        struct sk_buff *skb)
{
 struct j1939_sk_buff_cb *skcb = j1939_skb_to_cb(skb);
 struct j1939_priv *priv = session->priv;

 j1939_ac_fixup(priv, skb);

 if (j1939_address_is_unicast(skcb->addr.da) &&
     priv->ents[skcb->addr.da].nusers)
  skcb->flags |= J1939_ECU_LOCAL_DST;

 skcb->flags |= J1939_ECU_LOCAL_SRC;

 skb_queue_tail(&session->skb_queue, skb);
}

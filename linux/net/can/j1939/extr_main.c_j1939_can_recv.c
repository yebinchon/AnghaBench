
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; int sk; } ;
struct TYPE_4__ {int sa; int pgn; size_t da; int type; } ;
struct j1939_sk_buff_cb {int priority; int flags; TYPE_2__ addr; int tskey; } ;
struct j1939_priv {int lock; TYPE_1__* ents; } ;
struct can_frame {int can_id; int can_dlc; } ;
struct TYPE_3__ {scalar_t__ nusers; } ;


 int GFP_ATOMIC ;
 int J1939_CAN_HDR ;
 int J1939_ECU_LOCAL_DST ;
 int J1939_ECU_LOCAL_SRC ;
 size_t J1939_NO_ADDR ;
 int J1939_PGN_MAX ;
 int J1939_TP ;
 int can_skb_set_owner (struct sk_buff*,int ) ;
 int j1939_ac_recv (struct j1939_priv*,struct sk_buff*) ;
 scalar_t__ j1939_address_is_unicast (size_t) ;
 scalar_t__ j1939_pgn_is_pdu1 (int) ;
 int j1939_simple_recv (struct j1939_priv*,struct sk_buff*) ;
 int j1939_sk_recv (struct j1939_priv*,struct sk_buff*) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 scalar_t__ j1939_tp_recv (struct j1939_priv*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct j1939_sk_buff_cb*,int ,int) ;
 int min_t (int ,int ,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_trim (struct sk_buff*,int ) ;
 int uint8_t ;

__attribute__((used)) static void j1939_can_recv(struct sk_buff *iskb, void *data)
{
 struct j1939_priv *priv = data;
 struct sk_buff *skb;
 struct j1939_sk_buff_cb *skcb, *iskcb;
 struct can_frame *cf;






 skb = skb_clone(iskb, GFP_ATOMIC);
 if (!skb)
  return;

 can_skb_set_owner(skb, iskb->sk);





 cf = (void *)skb->data;
 skb_pull(skb, J1939_CAN_HDR);


 skb_trim(skb, min_t(uint8_t, cf->can_dlc, 8));


 skcb = j1939_skb_to_cb(skb);
 memset(skcb, 0, sizeof(*skcb));

 iskcb = j1939_skb_to_cb(iskb);
 skcb->tskey = iskcb->tskey;
 skcb->priority = (cf->can_id >> 26) & 0x7;
 skcb->addr.sa = cf->can_id;
 skcb->addr.pgn = (cf->can_id >> 8) & J1939_PGN_MAX;

 skcb->addr.type = J1939_TP;
 if (j1939_pgn_is_pdu1(skcb->addr.pgn)) {

  skcb->addr.da = skcb->addr.pgn;

  skcb->addr.pgn &= 0x3ff00;
 } else {

  skcb->addr.da = J1939_NO_ADDR;
 }


 read_lock_bh(&priv->lock);
 if (j1939_address_is_unicast(skcb->addr.sa) &&
     priv->ents[skcb->addr.sa].nusers)
  skcb->flags |= J1939_ECU_LOCAL_SRC;
 if (j1939_address_is_unicast(skcb->addr.da) &&
     priv->ents[skcb->addr.da].nusers)
  skcb->flags |= J1939_ECU_LOCAL_DST;
 read_unlock_bh(&priv->lock);


 j1939_ac_recv(priv, skb);

 if (j1939_tp_recv(priv, skb))

  goto done;

 j1939_simple_recv(priv, skb);
 j1939_sk_recv(priv, skb);
 done:
 kfree_skb(skb);
}

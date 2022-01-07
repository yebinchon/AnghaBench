
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ pgn; int dst_name; int da; int src_name; int sa; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int dummy; } ;
struct j1939_ecu {int name; } ;


 scalar_t__ J1939_PGN_ADDRESS_CLAIMED ;
 int j1939_ac_process (struct j1939_priv*,struct sk_buff*) ;
 scalar_t__ j1939_address_is_unicast (int ) ;
 struct j1939_ecu* j1939_ecu_get_by_addr (struct j1939_priv*,int ) ;
 int j1939_ecu_put (struct j1939_ecu*) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;

void j1939_ac_recv(struct j1939_priv *priv, struct sk_buff *skb)
{
 struct j1939_sk_buff_cb *skcb = j1939_skb_to_cb(skb);
 struct j1939_ecu *ecu;


 if (skcb->addr.pgn == J1939_PGN_ADDRESS_CLAIMED) {
  j1939_ac_process(priv, skb);
 } else if (j1939_address_is_unicast(skcb->addr.sa)) {

  ecu = j1939_ecu_get_by_addr(priv, skcb->addr.sa);
  if (ecu) {
   skcb->addr.src_name = ecu->name;
   j1939_ecu_put(ecu);
  }
 }


 ecu = j1939_ecu_get_by_addr(priv, skcb->addr.da);
 if (ecu) {
  skcb->addr.dst_name = ecu->name;
  j1939_ecu_put(ecu);
 }
}

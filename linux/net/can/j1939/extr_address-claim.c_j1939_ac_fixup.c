
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ pgn; scalar_t__ sa; void* da; scalar_t__ dst_name; scalar_t__ src_name; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int ndev; } ;
struct j1939_ecu {scalar_t__ addr; } ;


 int EADDRNOTAVAIL ;
 int ENODEV ;
 scalar_t__ J1939_PGN_ADDRESS_CLAIMED ;
 int j1939_ac_msg_is_request (struct sk_buff*) ;
 int j1939_ac_verify_outgoing (struct j1939_priv*,struct sk_buff*) ;
 int j1939_address_is_unicast (void*) ;
 struct j1939_ecu* j1939_ecu_get_by_name (struct j1939_priv*,scalar_t__) ;
 int j1939_ecu_put (struct j1939_ecu*) ;
 int j1939_ecu_unmap (struct j1939_ecu*) ;
 void* j1939_name_to_addr (struct j1939_priv*,scalar_t__) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 int netdev_notice (int ,char*,scalar_t__) ;

int j1939_ac_fixup(struct j1939_priv *priv, struct sk_buff *skb)
{
 struct j1939_sk_buff_cb *skcb = j1939_skb_to_cb(skb);
 int ret;
 u8 addr;


 if (skcb->addr.pgn == J1939_PGN_ADDRESS_CLAIMED) {
  struct j1939_ecu *ecu;

  ret = j1939_ac_verify_outgoing(priv, skb);

  if (ret < 0)
   return ret;
  ecu = j1939_ecu_get_by_name(priv, skcb->addr.src_name);
  if (!ecu)
   return -ENODEV;

  if (ecu->addr != skcb->addr.sa)

   j1939_ecu_unmap(ecu);
  j1939_ecu_put(ecu);
 } else if (skcb->addr.src_name) {

  addr = j1939_name_to_addr(priv, skcb->addr.src_name);
  if (!j1939_address_is_unicast(addr) &&
      !j1939_ac_msg_is_request(skb)) {
   netdev_notice(priv->ndev, "tx drop: invalid sa for name 0x%016llx\n",
          skcb->addr.src_name);
   return -EADDRNOTAVAIL;
  }
  skcb->addr.sa = addr;
 }


 if (skcb->addr.dst_name) {
  addr = j1939_name_to_addr(priv, skcb->addr.dst_name);
  if (!j1939_address_is_unicast(addr)) {
   netdev_notice(priv->ndev, "tx drop: invalid da for name 0x%016llx\n",
          skcb->addr.dst_name);
   return -EADDRNOTAVAIL;
  }
  skcb->addr.da = addr;
 }
 return 0;
}

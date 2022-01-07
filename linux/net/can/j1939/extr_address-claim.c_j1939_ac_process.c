
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_2__ {scalar_t__ sa; int src_name; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int lock; int ndev; } ;
struct j1939_ecu {scalar_t__ addr; scalar_t__ name; } ;
typedef int name_t ;


 scalar_t__ IS_ERR_OR_NULL (struct j1939_ecu*) ;
 scalar_t__ j1939_address_is_idle (scalar_t__) ;
 scalar_t__ j1939_address_is_unicast (scalar_t__) ;
 int j1939_address_is_valid (scalar_t__) ;
 struct j1939_ecu* j1939_ecu_create_locked (struct j1939_priv*,int ) ;
 struct j1939_ecu* j1939_ecu_get_by_addr_locked (struct j1939_priv*,scalar_t__) ;
 struct j1939_ecu* j1939_ecu_get_by_name_locked (struct j1939_priv*,int ) ;
 int j1939_ecu_put (struct j1939_ecu*) ;
 int j1939_ecu_timer_cancel (struct j1939_ecu*) ;
 int j1939_ecu_timer_start (struct j1939_ecu*) ;
 int j1939_ecu_unmap_locked (struct j1939_ecu*) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 int j1939_skb_to_name (struct sk_buff*) ;
 int netdev_notice (int ,char*,...) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void j1939_ac_process(struct j1939_priv *priv, struct sk_buff *skb)
{
 struct j1939_sk_buff_cb *skcb = j1939_skb_to_cb(skb);
 struct j1939_ecu *ecu, *prev;
 name_t name;

 if (skb->len != 8) {
  netdev_notice(priv->ndev, "rx address claim with wrong dlc %i\n",
         skb->len);
  return;
 }

 name = j1939_skb_to_name(skb);
 skcb->addr.src_name = name;
 if (!name) {
  netdev_notice(priv->ndev, "rx address claim without name\n");
  return;
 }

 if (!j1939_address_is_valid(skcb->addr.sa)) {
  netdev_notice(priv->ndev, "rx address claim with broadcast sa\n");
  return;
 }

 write_lock_bh(&priv->lock);
 ecu = j1939_ecu_get_by_name_locked(priv, name);
 if (!ecu && j1939_address_is_unicast(skcb->addr.sa))
  ecu = j1939_ecu_create_locked(priv, name);

 if (IS_ERR_OR_NULL(ecu))
  goto out_unlock_bh;


 j1939_ecu_timer_cancel(ecu);

 if (j1939_address_is_idle(skcb->addr.sa)) {
  j1939_ecu_unmap_locked(ecu);
  goto out_ecu_put;
 }


 if (ecu->addr != skcb->addr.sa)
  j1939_ecu_unmap_locked(ecu);
 ecu->addr = skcb->addr.sa;

 prev = j1939_ecu_get_by_addr_locked(priv, skcb->addr.sa);
 if (prev) {
  if (ecu->name > prev->name) {
   j1939_ecu_unmap_locked(ecu);
   j1939_ecu_put(prev);
   goto out_ecu_put;
  } else {

   j1939_ecu_unmap_locked(prev);
   j1939_ecu_put(prev);
  }
 }

 j1939_ecu_timer_start(ecu);
 out_ecu_put:
 j1939_ecu_put(ecu);
 out_unlock_bh:
 write_unlock_bh(&priv->lock);
}

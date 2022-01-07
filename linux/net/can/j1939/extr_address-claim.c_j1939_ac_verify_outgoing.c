
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_2__ {scalar_t__ src_name; scalar_t__ sa; scalar_t__ da; scalar_t__ dst_name; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int ndev; } ;


 int EPROTO ;
 scalar_t__ J1939_NO_ADDR ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 scalar_t__ j1939_skb_to_name (struct sk_buff*) ;
 int netdev_notice (int ,char*,...) ;

__attribute__((used)) static int j1939_ac_verify_outgoing(struct j1939_priv *priv,
        struct sk_buff *skb)
{
 struct j1939_sk_buff_cb *skcb = j1939_skb_to_cb(skb);

 if (skb->len != 8) {
  netdev_notice(priv->ndev, "tx address claim with dlc %i\n",
         skb->len);
  return -EPROTO;
 }

 if (skcb->addr.src_name != j1939_skb_to_name(skb)) {
  netdev_notice(priv->ndev, "tx address claim with different name\n");
  return -EPROTO;
 }

 if (skcb->addr.sa == J1939_NO_ADDR) {
  netdev_notice(priv->ndev, "tx address claim with broadcast sa\n");
  return -EPROTO;
 }


 if (skcb->addr.dst_name || skcb->addr.da != J1939_NO_ADDR) {
  netdev_notice(priv->ndev, "tx address claim with dest, not broadcast\n");
  return -EPROTO;
 }
 return 0;
}

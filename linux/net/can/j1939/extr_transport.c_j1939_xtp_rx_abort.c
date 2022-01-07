
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct j1939_priv {int dummy; } ;


 int j1939_xtp_rx_abort_one (struct j1939_priv*,struct sk_buff*,int,int) ;

__attribute__((used)) static void
j1939_xtp_rx_abort(struct j1939_priv *priv, struct sk_buff *skb,
     bool transmitter)
{
 j1939_xtp_rx_abort_one(priv, skb, 0, transmitter);
 j1939_xtp_rx_abort_one(priv, skb, 1, transmitter);
}

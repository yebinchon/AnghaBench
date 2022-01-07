
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct j1939_session {int skcb; struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int j1939_send_one (struct j1939_priv*,struct sk_buff*) ;
 scalar_t__ j1939_tp_padding ;
 struct sk_buff* j1939_tp_tx_dat_new (struct j1939_priv*,int *,int,int) ;
 int memset (int ,int,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int const*,int) ;

__attribute__((used)) static int j1939_tp_tx_dat(struct j1939_session *session,
      const u8 *dat, int len)
{
 struct j1939_priv *priv = session->priv;
 struct sk_buff *skb;

 skb = j1939_tp_tx_dat_new(priv, &session->skcb,
      0, 0);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 skb_put_data(skb, dat, len);
 if (j1939_tp_padding && len < 8)
  memset(skb_put(skb, 8 - len), 0xff, 8 - len);

 return j1939_send_one(priv, skb);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int skb_zcopy_clear (struct sk_buff*,int) ;

void skb_tx_error(struct sk_buff *skb)
{
 skb_zcopy_clear(skb, 1);
}

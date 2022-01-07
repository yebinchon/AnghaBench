
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;



 int cipso_v4_error (struct sk_buff*,int,int) ;
 int cipso_v4_optptr (struct sk_buff*) ;

void netlbl_skbuff_err(struct sk_buff *skb, u16 family, int error, int gateway)
{
 switch (family) {
 case 128:
  if (cipso_v4_optptr(skb))
   cipso_v4_error(skb, error, gateway);
  break;
 }
}

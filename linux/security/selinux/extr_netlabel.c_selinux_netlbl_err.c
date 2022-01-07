
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;


 int netlbl_skbuff_err (struct sk_buff*,int ,int,int) ;

void selinux_netlbl_err(struct sk_buff *skb, u16 family, int error, int gateway)
{
 netlbl_skbuff_err(skb, family, error, gateway);
}

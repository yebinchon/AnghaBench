
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int dccpd_opt_len; } ;


 TYPE_1__* DCCP_SKB_CB (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void dccp_insert_option_padding(struct sk_buff *skb)
{
 int padding = DCCP_SKB_CB(skb)->dccpd_opt_len % 4;

 if (padding != 0) {
  padding = 4 - padding;
  memset(skb_push(skb, padding), 0, padding);
  DCCP_SKB_CB(skb)->dccpd_opt_len += padding;
 }
}

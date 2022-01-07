
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ tstamp; } ;


 scalar_t__ skb_is_err_queue (struct sk_buff const*) ;

__attribute__((used)) static bool skb_is_swtx_tstamp(const struct sk_buff *skb, int false_tstamp)
{
 return skb->tstamp && !false_tstamp && skb_is_err_queue(skb);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;


 int inet6_is_jumbogram (struct sk_buff*) ;
 int udp_skb_len (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int udp6_skb_len(struct sk_buff *skb)
{
 return unlikely(inet6_is_jumbogram(skb)) ? skb->len : udp_skb_len(skb);
}

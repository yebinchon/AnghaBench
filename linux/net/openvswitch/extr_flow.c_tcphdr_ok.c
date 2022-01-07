
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct sk_buff {int len; } ;


 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_transport_offset (struct sk_buff*) ;
 int tcp_hdrlen (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool tcphdr_ok(struct sk_buff *skb)
{
 int th_ofs = skb_transport_offset(skb);
 int tcp_len;

 if (unlikely(!pskb_may_pull(skb, th_ofs + sizeof(struct tcphdr))))
  return 0;

 tcp_len = tcp_hdrlen(skb);
 if (unlikely(tcp_len < sizeof(struct tcphdr) ||
       skb->len < th_ofs + tcp_len))
  return 0;

 return 1;
}

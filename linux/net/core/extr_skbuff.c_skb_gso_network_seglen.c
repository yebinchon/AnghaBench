
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 unsigned int skb_gso_transport_seglen (struct sk_buff const*) ;
 unsigned int skb_network_header (struct sk_buff const*) ;
 unsigned int skb_transport_header (struct sk_buff const*) ;

__attribute__((used)) static unsigned int skb_gso_network_seglen(const struct sk_buff *skb)
{
 unsigned int hdr_len = skb_transport_header(skb) -
          skb_network_header(skb);

 return hdr_len + skb_gso_transport_seglen(skb);
}

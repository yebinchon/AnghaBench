
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int SKB_GSO_GRE ;
 int SKB_GSO_GRE_CSUM ;
 int iptunnel_handle_offloads (struct sk_buff*,int ) ;

__attribute__((used)) static int gre_handle_offloads(struct sk_buff *skb, bool csum)
{
 return iptunnel_handle_offloads(skb, csum ? SKB_GSO_GRE_CSUM : SKB_GSO_GRE);
}

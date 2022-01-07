
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int __be32 ;


 int vti_input (struct sk_buff*,int,int ,int,int) ;

__attribute__((used)) static int vti_input_proto(struct sk_buff *skb, int nexthdr, __be32 spi,
      int encap_type)
{
 return vti_input(skb, nexthdr, spi, encap_type, 0);
}

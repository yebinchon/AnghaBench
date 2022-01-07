
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {scalar_t__ protocol; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int IPPROTO_IPV6 ;
 int TC_ACT_OK ;
 scalar_t__ __bpf_constant_htons (int ) ;
 int encap_ipv4 (struct __sk_buff*,int ,int ) ;

int __encap_sit_none(struct __sk_buff *skb)
{
 if (skb->protocol == __bpf_constant_htons(ETH_P_IPV6))
  return encap_ipv4(skb, IPPROTO_IPV6, ETH_P_IP);
 else
  return TC_ACT_OK;
}

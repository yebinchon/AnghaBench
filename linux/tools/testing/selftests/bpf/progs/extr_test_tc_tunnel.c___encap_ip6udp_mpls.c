
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {scalar_t__ protocol; } ;


 int ETH_P_IPV6 ;
 int ETH_P_MPLS_UC ;
 int IPPROTO_UDP ;
 int TC_ACT_OK ;
 scalar_t__ __bpf_constant_htons (int ) ;
 int encap_ipv6 (struct __sk_buff*,int ,int ) ;

int __encap_ip6udp_mpls(struct __sk_buff *skb)
{
 if (skb->protocol == __bpf_constant_htons(ETH_P_IPV6))
  return encap_ipv6(skb, IPPROTO_UDP, ETH_P_MPLS_UC);
 else
  return TC_ACT_OK;
}

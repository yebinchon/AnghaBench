
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {scalar_t__ protocol; } ;


 int ETH_P_IP ;
 int TC_ACT_OK ;
 scalar_t__ bpf_htons (int ) ;
 int handle_ipv4 (struct __sk_buff*) ;

int tc_prog(struct __sk_buff *skb)
{
 if (skb->protocol == bpf_htons(ETH_P_IP))
  return handle_ipv4(skb);

 return TC_ACT_OK;
}

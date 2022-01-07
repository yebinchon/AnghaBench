
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6hdr {scalar_t__ nexthdr; } ;
struct eth_hdr {scalar_t__ h_proto; } ;
struct __sk_buff {scalar_t__ data_end; scalar_t__ data; } ;
typedef int reject_msg ;
typedef int pass_msg ;
typedef int dont_care_msg ;


 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_ICMPV6 ;
 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 int bpf_skb_under_cgroup (struct __sk_buff*,int *,int ) ;
 int bpf_trace_printk (char*,int,...) ;
 scalar_t__ htons (int ) ;
 int test_cgrp2_array_pin ;

int handle_egress(struct __sk_buff *skb)
{
 void *data = (void *)(long)skb->data;
 struct eth_hdr *eth = data;
 struct ipv6hdr *ip6h = data + sizeof(*eth);
 void *data_end = (void *)(long)skb->data_end;
 char dont_care_msg[] = "dont care %04x %d\n";
 char pass_msg[] = "pass\n";
 char reject_msg[] = "reject\n";


 if (data + sizeof(*eth) + sizeof(*ip6h) > data_end)
  return TC_ACT_OK;

 if (eth->h_proto != htons(ETH_P_IPV6) ||
     ip6h->nexthdr != IPPROTO_ICMPV6) {
  bpf_trace_printk(dont_care_msg, sizeof(dont_care_msg),
     eth->h_proto, ip6h->nexthdr);
  return TC_ACT_OK;
 } else if (bpf_skb_under_cgroup(skb, &test_cgrp2_array_pin, 0) != 1) {
  bpf_trace_printk(pass_msg, sizeof(pass_msg));
  return TC_ACT_OK;
 } else {
  bpf_trace_printk(reject_msg, sizeof(reject_msg));
  return TC_ACT_SHOT;
 }
}

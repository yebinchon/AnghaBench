
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_hdr {int eth_proto; } ;
struct __sk_buff {scalar_t__ data; scalar_t__ data_end; } ;
typedef int __u32 ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int TC_ACT_SHOT ;
 int bpf_htons (int ) ;
 int process_packet (void*,int,void*,int,struct __sk_buff*) ;

int balancer_ingress(struct __sk_buff *ctx)
{
 void *data_end = (void *)(long)ctx->data_end;
 void *data = (void *)(long)ctx->data;
 struct eth_hdr *eth = data;
 __u32 eth_proto;
 __u32 nh_off;

 nh_off = sizeof(struct eth_hdr);
 if (data + nh_off > data_end)
  return TC_ACT_SHOT;
 eth_proto = eth->eth_proto;
 if (eth_proto == bpf_htons(ETH_P_IP))
  return process_packet(data, nh_off, data_end, 0, ctx);
 else if (eth_proto == bpf_htons(ETH_P_IPV6))
  return process_packet(data, nh_off, data_end, 1, ctx);
 else
  return TC_ACT_SHOT;
}

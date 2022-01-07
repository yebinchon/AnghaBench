
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;
struct iphdr {int daddr; int saddr; } ;
struct icmphdr {scalar_t__ checksum; int type; } ;
struct ethhdr {int dummy; } ;
typedef int __be32 ;


 int ICMP_ECHO ;
 int ICMP_ECHOREPLY ;
 int ICMP_ECHO_LEN ;
 int XDP_TX ;
 int icmp_check (struct xdp_md*,int ) ;
 scalar_t__ ipv4_csum (struct icmphdr*,int ) ;
 int swap_src_dst_mac (void*) ;

int xdping_server(struct xdp_md *ctx)
{
 void *data_end = (void *)(long)ctx->data_end;
 void *data = (void *)(long)ctx->data;
 struct ethhdr *eth = data;
 struct icmphdr *icmph;
 struct iphdr *iph;
 __be32 raddr;
 int ret;

 ret = icmp_check(ctx, ICMP_ECHO);

 if (ret != XDP_TX)
  return ret;

 iph = data + sizeof(*eth);
 icmph = data + sizeof(*eth) + sizeof(*iph);
 raddr = iph->saddr;


 swap_src_dst_mac(data);
 iph->saddr = iph->daddr;
 iph->daddr = raddr;
 icmph->type = ICMP_ECHOREPLY;
 icmph->checksum = 0;
 icmph->checksum = ipv4_csum(icmph, ICMP_ECHO_LEN);

 return XDP_TX;
}

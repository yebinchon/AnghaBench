
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;
struct pinginfo {scalar_t__ seq; scalar_t__ start; scalar_t__* times; size_t count; } ;
struct iphdr {int daddr; int saddr; } ;
struct TYPE_3__ {scalar_t__ sequence; } ;
struct TYPE_4__ {TYPE_1__ echo; } ;
struct icmphdr {scalar_t__ checksum; TYPE_2__ un; int type; } ;
struct ethhdr {int dummy; } ;
typedef size_t __u8 ;
typedef scalar_t__ __u64 ;
typedef int __be32 ;
typedef void* __be16 ;


 int ICMP_ECHO ;
 int ICMP_ECHOREPLY ;
 int ICMP_ECHO_LEN ;
 size_t XDPING_MAX_COUNT ;
 int XDP_PASS ;
 int XDP_TX ;
 void* bpf_htons (scalar_t__) ;
 void* bpf_ktime_get_ns () ;
 struct pinginfo* bpf_map_lookup_elem (int *,int *) ;
 scalar_t__ bpf_ntohs (scalar_t__) ;
 int icmp_check (struct xdp_md*,int ) ;
 scalar_t__ ipv4_csum (struct icmphdr*,int ) ;
 int ping_map ;
 int swap_src_dst_mac (void*) ;

int xdping_client(struct xdp_md *ctx)
{
 void *data_end = (void *)(long)ctx->data_end;
 void *data = (void *)(long)ctx->data;
 struct pinginfo *pinginfo = ((void*)0);
 struct ethhdr *eth = data;
 struct icmphdr *icmph;
 struct iphdr *iph;
 __u64 recvtime;
 __be32 raddr;
 __be16 seq;
 int ret;
 __u8 i;

 ret = icmp_check(ctx, ICMP_ECHOREPLY);

 if (ret != XDP_TX)
  return ret;

 iph = data + sizeof(*eth);
 icmph = data + sizeof(*eth) + sizeof(*iph);
 raddr = iph->saddr;


 recvtime = bpf_ktime_get_ns();
 pinginfo = bpf_map_lookup_elem(&ping_map, &raddr);
 if (!pinginfo || pinginfo->seq != icmph->un.echo.sequence)
  return XDP_PASS;

 if (pinginfo->start) {
#pragma clang loop unroll(full)
 for (i = 0; i < XDPING_MAX_COUNT; i++) {
   if (pinginfo->times[i] == 0)
    break;
  }

  if (i < XDPING_MAX_COUNT) {
   pinginfo->times[i] = recvtime -
          pinginfo->start;
   pinginfo->start = 0;
   i++;
  }

  if (i == pinginfo->count || i == XDPING_MAX_COUNT)
   return XDP_PASS;
 }


 swap_src_dst_mac(data);
 iph->saddr = iph->daddr;
 iph->daddr = raddr;
 icmph->type = ICMP_ECHO;
 seq = bpf_htons(bpf_ntohs(icmph->un.echo.sequence) + 1);
 icmph->un.echo.sequence = seq;
 icmph->checksum = 0;
 icmph->checksum = ipv4_csum(icmph, ICMP_ECHO_LEN);

 pinginfo->seq = seq;
 pinginfo->start = bpf_ktime_get_ns();

 return XDP_TX;
}

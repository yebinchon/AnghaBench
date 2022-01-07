
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;
struct parse_pkt {scalar_t__ vlan_outer_offset; int member_0; } ;
struct ethhdr {int dummy; } ;


 int VLAN_HDR_SZ ;
 int XDP_ABORTED ;
 int XDP_PASS ;
 int bpf_xdp_adjust_head (struct xdp_md*,int ) ;
 int parse_eth_frame (struct ethhdr*,void*,struct parse_pkt*) ;
 int shift_mac_4bytes_32bit (void*) ;

int xdp_prognum3(struct xdp_md *ctx)
{
 void *data_end = (void *)(long)ctx->data_end;
 void *data = (void *)(long)ctx->data;
 struct ethhdr *orig_eth = data;
 struct parse_pkt pkt = { 0 };

 if (!parse_eth_frame(orig_eth, data_end, &pkt))
  return XDP_ABORTED;


 if (pkt.vlan_outer_offset == 0)
  return XDP_PASS;


 shift_mac_4bytes_32bit(data);


 bpf_xdp_adjust_head(ctx, VLAN_HDR_SZ);

 return XDP_PASS;
}

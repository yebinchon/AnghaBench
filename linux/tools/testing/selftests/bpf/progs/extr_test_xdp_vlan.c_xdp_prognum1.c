
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;
struct parse_pkt {scalar_t__ vlan_outer; int vlan_outer_offset; int member_0; } ;
struct _vlan_hdr {int h_vlan_TCI; } ;


 scalar_t__ TESTVLAN ;
 int TO_VLAN ;
 int XDP_ABORTED ;
 int XDP_PASS ;
 int bpf_htons (int) ;
 int bpf_ntohs (int ) ;
 int parse_eth_frame (void*,void*,struct parse_pkt*) ;

int xdp_prognum1(struct xdp_md *ctx)
{
 void *data_end = (void *)(long)ctx->data_end;
 void *data = (void *)(long)ctx->data;
 struct parse_pkt pkt = { 0 };

 if (!parse_eth_frame(data, data_end, &pkt))
  return XDP_ABORTED;


 if (pkt.vlan_outer == TESTVLAN) {
  struct _vlan_hdr *vlan_hdr = data + pkt.vlan_outer_offset;


  vlan_hdr->h_vlan_TCI =
   bpf_htons((bpf_ntohs(vlan_hdr->h_vlan_TCI) & 0xf000)
      | TO_VLAN);
 }

 return XDP_PASS;
}

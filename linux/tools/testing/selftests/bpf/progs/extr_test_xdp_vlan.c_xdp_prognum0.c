
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;
struct parse_pkt {scalar_t__ vlan_outer; int member_0; } ;


 scalar_t__ TESTVLAN ;
 int XDP_ABORTED ;
 int XDP_PASS ;
 int parse_eth_frame (void*,void*,struct parse_pkt*) ;

int xdp_prognum0(struct xdp_md *ctx)
{
 void *data_end = (void *)(long)ctx->data_end;
 void *data = (void *)(long)ctx->data;
 struct parse_pkt pkt = { 0 };

 if (!parse_eth_frame(data, data_end, &pkt))
  return XDP_ABORTED;


 if (pkt.vlan_outer == TESTVLAN)
  return XDP_ABORTED;






 return XDP_PASS;
}

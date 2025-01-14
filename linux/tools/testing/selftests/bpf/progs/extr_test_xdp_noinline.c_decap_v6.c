
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {scalar_t__ data_end; scalar_t__ data; } ;
struct ipv6hdr {int dummy; } ;
struct eth_hdr {int eth_proto; int eth_dest; int eth_source; } ;


 scalar_t__ bpf_xdp_adjust_head (struct xdp_md*,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static __attribute__ ((noinline))
bool decap_v6(struct xdp_md *xdp, void **data, void **data_end, bool inner_v4)
{
 struct eth_hdr *new_eth;
 struct eth_hdr *old_eth;

 old_eth = *data;
 new_eth = *data + sizeof(struct ipv6hdr);
 memcpy(new_eth->eth_source, old_eth->eth_source, 6);
 memcpy(new_eth->eth_dest, old_eth->eth_dest, 6);
 if (inner_v4)
  new_eth->eth_proto = 8;
 else
  new_eth->eth_proto = 56710;
 if (bpf_xdp_adjust_head(xdp, (int)sizeof(struct ipv6hdr)))
  return 0;
 *data = (void *)(long)xdp->data;
 *data_end = (void *)(long)xdp->data_end;
 return 1;
}

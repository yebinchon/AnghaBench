
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;
struct ethhdr {int dummy; } ;


 int XDP_DROP ;
 void* bpf_map_lookup_elem (int *,int*) ;
 int bpf_redirect (int,int ) ;
 int rxcnt ;
 int swap_src_dst_mac (void*) ;
 int tx_port ;

int xdp_redirect_prog(struct xdp_md *ctx)
{
 void *data_end = (void *)(long)ctx->data_end;
 void *data = (void *)(long)ctx->data;
 struct ethhdr *eth = data;
 int rc = XDP_DROP;
 int *ifindex, port = 0;
 long *value;
 u32 key = 0;
 u64 nh_off;

 nh_off = sizeof(*eth);
 if (data + nh_off > data_end)
  return rc;

 ifindex = bpf_map_lookup_elem(&tx_port, &port);
 if (!ifindex)
  return rc;

 value = bpf_map_lookup_elem(&rxcnt, &key);
 if (value)
  *value += 1;

 swap_src_dst_mac(data);
 return bpf_redirect(*ifindex, 0);
}

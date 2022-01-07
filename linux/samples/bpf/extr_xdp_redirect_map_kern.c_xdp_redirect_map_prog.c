
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;
struct ethhdr {int dummy; } ;


 int XDP_DROP ;
 long* bpf_map_lookup_elem (int *,int *) ;
 int bpf_redirect_map (int *,int,int ) ;
 int rxcnt ;
 int swap_src_dst_mac (void*) ;
 int tx_port ;

int xdp_redirect_map_prog(struct xdp_md *ctx)
{
 void *data_end = (void *)(long)ctx->data_end;
 void *data = (void *)(long)ctx->data;
 struct ethhdr *eth = data;
 int rc = XDP_DROP;
 int vport, port = 0, m = 0;
 long *value;
 u32 key = 0;
 u64 nh_off;

 nh_off = sizeof(*eth);
 if (data + nh_off > data_end)
  return rc;


 vport = 0;


 value = bpf_map_lookup_elem(&rxcnt, &key);
 if (value)
  *value += 1;

 swap_src_dst_mac(data);


 return bpf_redirect_map(&tx_port, vport, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;
struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; } ;
struct ethhdr {scalar_t__ h_proto; } ;


 int ETH_P_8021AD ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_UDP ;
 int XDP_DROP ;
 int XDP_TX ;
 long* bpf_map_lookup_elem (int *,scalar_t__*) ;
 scalar_t__ htons (int ) ;
 scalar_t__ parse_ipv4 (void*,int,void*) ;
 scalar_t__ parse_ipv6 (void*,int,void*) ;
 int rxcnt ;
 int swap_src_dst_mac (void*) ;

int xdp_prog1(struct xdp_md *ctx)
{
 void *data_end = (void *)(long)ctx->data_end;
 void *data = (void *)(long)ctx->data;
 struct ethhdr *eth = data;
 int rc = XDP_DROP;
 long *value;
 u16 h_proto;
 u64 nh_off;
 u32 ipproto;

 nh_off = sizeof(*eth);
 if (data + nh_off > data_end)
  return rc;

 h_proto = eth->h_proto;

 if (h_proto == htons(ETH_P_8021Q) || h_proto == htons(ETH_P_8021AD)) {
  struct vlan_hdr *vhdr;

  vhdr = data + nh_off;
  nh_off += sizeof(struct vlan_hdr);
  if (data + nh_off > data_end)
   return rc;
  h_proto = vhdr->h_vlan_encapsulated_proto;
 }
 if (h_proto == htons(ETH_P_8021Q) || h_proto == htons(ETH_P_8021AD)) {
  struct vlan_hdr *vhdr;

  vhdr = data + nh_off;
  nh_off += sizeof(struct vlan_hdr);
  if (data + nh_off > data_end)
   return rc;
  h_proto = vhdr->h_vlan_encapsulated_proto;
 }

 if (h_proto == htons(ETH_P_IP))
  ipproto = parse_ipv4(data, nh_off, data_end);
 else if (h_proto == htons(ETH_P_IPV6))
  ipproto = parse_ipv6(data, nh_off, data_end);
 else
  ipproto = 0;

 value = bpf_map_lookup_elem(&rxcnt, &ipproto);
 if (value)
  *value += 1;

 if (ipproto == IPPROTO_UDP) {
  swap_src_dst_mac(data);
  rc = XDP_TX;
 }

 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vlan_hdr {int h_vlan_encapsulated_proto; } ;
struct ethhdr {int h_proto; } ;
struct __sk_buff {scalar_t__ data_end; scalar_t__ data; } ;


 int ETH_P_8021AD ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int htons (int ) ;
 int parse_ipv4 (void*,int,void*) ;
 int parse_ipv6 (void*,int,void*) ;

int handle_ingress(struct __sk_buff *skb)
{
 void *data = (void *)(long)skb->data;
 struct ethhdr *eth = data;
 void *data_end = (void *)(long)skb->data_end;
 uint64_t h_proto, nh_off;

 nh_off = sizeof(*eth);
 if (data + nh_off > data_end)
  return 0;

 h_proto = eth->h_proto;

 if (h_proto == ETH_P_8021Q || h_proto == ETH_P_8021AD) {
  struct vlan_hdr *vhdr;

  vhdr = data + nh_off;
  nh_off += sizeof(struct vlan_hdr);
  if (data + nh_off > data_end)
   return 0;
  h_proto = vhdr->h_vlan_encapsulated_proto;
 }
 if (h_proto == ETH_P_8021Q || h_proto == ETH_P_8021AD) {
  struct vlan_hdr *vhdr;

  vhdr = data + nh_off;
  nh_off += sizeof(struct vlan_hdr);
  if (data + nh_off > data_end)
   return 0;
  h_proto = vhdr->h_vlan_encapsulated_proto;
 }
 if (h_proto == htons(ETH_P_IP))
  return parse_ipv4(data, nh_off, data_end);
 else if (h_proto == htons(ETH_P_IPV6))
  return parse_ipv6(data, nh_off, data_end);
 return 0;
}

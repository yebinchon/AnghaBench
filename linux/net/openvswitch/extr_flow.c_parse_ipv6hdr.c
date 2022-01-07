
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int proto; int frag; int ttl; int tos; } ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_5__ {int label; TYPE_1__ addr; } ;
struct sw_flow_key {TYPE_3__ ip; TYPE_2__ ipv6; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int daddr; int saddr; int hop_limit; } ;
typedef int __be32 ;


 int EPROTO ;
 int IP6_FH_F_FRAG ;
 int IPV6_FLOWINFO_FLOWLABEL ;
 int NEXTHDR_NONE ;
 int OVS_FRAG_TYPE_FIRST ;
 int OVS_FRAG_TYPE_LATER ;
 int OVS_FRAG_TYPE_NONE ;
 int check_header (struct sk_buff*,unsigned int) ;
 int htonl (int ) ;
 int ipv6_find_hdr (struct sk_buff*,unsigned int*,int,unsigned short*,int*) ;
 int ipv6_get_dsfield (struct ipv6hdr*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 unsigned int skb_network_offset (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int parse_ipv6hdr(struct sk_buff *skb, struct sw_flow_key *key)
{
 unsigned short frag_off;
 unsigned int payload_ofs = 0;
 unsigned int nh_ofs = skb_network_offset(skb);
 unsigned int nh_len;
 struct ipv6hdr *nh;
 int err, nexthdr, flags = 0;

 err = check_header(skb, nh_ofs + sizeof(*nh));
 if (unlikely(err))
  return err;

 nh = ipv6_hdr(skb);

 key->ip.proto = NEXTHDR_NONE;
 key->ip.tos = ipv6_get_dsfield(nh);
 key->ip.ttl = nh->hop_limit;
 key->ipv6.label = *(__be32 *)nh & htonl(IPV6_FLOWINFO_FLOWLABEL);
 key->ipv6.addr.src = nh->saddr;
 key->ipv6.addr.dst = nh->daddr;

 nexthdr = ipv6_find_hdr(skb, &payload_ofs, -1, &frag_off, &flags);
 if (flags & IP6_FH_F_FRAG) {
  if (frag_off) {
   key->ip.frag = OVS_FRAG_TYPE_LATER;
   key->ip.proto = nexthdr;
   return 0;
  }
  key->ip.frag = OVS_FRAG_TYPE_FIRST;
 } else {
  key->ip.frag = OVS_FRAG_TYPE_NONE;
 }





 if (unlikely(nexthdr < 0))
  return -EPROTO;

 nh_len = payload_ofs - nh_ofs;
 skb_set_transport_header(skb, nh_ofs + nh_len);
 key->ip.proto = nexthdr;
 return nh_len;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ttl; int tos; int proto; } ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_5__ {int label; TYPE_1__ addr; } ;
struct sw_flow_key {TYPE_3__ ip; TYPE_2__ ipv6; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_ipv6 {int ipv6_tclass; int ipv6_hlimit; scalar_t__ ipv6_label; int ipv6_dst; int ipv6_src; } ;
struct ipv6hdr {int hop_limit; int nexthdr; int daddr; int saddr; } ;
typedef int masked ;
typedef int __be32 ;


 int IP6_FH_F_SKIP_RH ;
 int IPV6_FLOWINFO_FLOWLABEL ;
 scalar_t__ NEXTHDR_ROUTING ;
 int OVS_SET_MASKED (int ,int ,int ) ;
 int htonl (int ) ;
 int ipv6_change_dsfield (struct ipv6hdr*,int,int) ;
 scalar_t__ ipv6_ext_hdr (int ) ;
 scalar_t__ ipv6_find_hdr (struct sk_buff*,unsigned int*,scalar_t__,int *,int*) ;
 int ipv6_get_dsfield (struct ipv6hdr*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ is_ipv6_mask_nonzero (int ) ;
 int mask_ipv6_addr (int*,int ,int ,int*) ;
 int memcmp (int*,int*,int) ;
 int memcpy (int *,int*,int) ;
 int ntohl (scalar_t__) ;
 int set_ipv6_addr (struct sk_buff*,int ,int*,int*,int) ;
 int set_ipv6_fl (struct ipv6hdr*,int ,int ) ;
 int skb_ensure_writable (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_ipv6(struct sk_buff *skb, struct sw_flow_key *flow_key,
      const struct ovs_key_ipv6 *key,
      const struct ovs_key_ipv6 *mask)
{
 struct ipv6hdr *nh;
 int err;

 err = skb_ensure_writable(skb, skb_network_offset(skb) +
      sizeof(struct ipv6hdr));
 if (unlikely(err))
  return err;

 nh = ipv6_hdr(skb);





 if (is_ipv6_mask_nonzero(mask->ipv6_src)) {
  __be32 *saddr = (__be32 *)&nh->saddr;
  __be32 masked[4];

  mask_ipv6_addr(saddr, key->ipv6_src, mask->ipv6_src, masked);

  if (unlikely(memcmp(saddr, masked, sizeof(masked)))) {
   set_ipv6_addr(skb, flow_key->ip.proto, saddr, masked,
          1);
   memcpy(&flow_key->ipv6.addr.src, masked,
          sizeof(flow_key->ipv6.addr.src));
  }
 }
 if (is_ipv6_mask_nonzero(mask->ipv6_dst)) {
  unsigned int offset = 0;
  int flags = IP6_FH_F_SKIP_RH;
  bool recalc_csum = 1;
  __be32 *daddr = (__be32 *)&nh->daddr;
  __be32 masked[4];

  mask_ipv6_addr(daddr, key->ipv6_dst, mask->ipv6_dst, masked);

  if (unlikely(memcmp(daddr, masked, sizeof(masked)))) {
   if (ipv6_ext_hdr(nh->nexthdr))
    recalc_csum = (ipv6_find_hdr(skb, &offset,
            NEXTHDR_ROUTING,
            ((void*)0), &flags)
            != NEXTHDR_ROUTING);

   set_ipv6_addr(skb, flow_key->ip.proto, daddr, masked,
          recalc_csum);
   memcpy(&flow_key->ipv6.addr.dst, masked,
          sizeof(flow_key->ipv6.addr.dst));
  }
 }
 if (mask->ipv6_tclass) {
  ipv6_change_dsfield(nh, ~mask->ipv6_tclass, key->ipv6_tclass);
  flow_key->ip.tos = ipv6_get_dsfield(nh);
 }
 if (mask->ipv6_label) {
  set_ipv6_fl(nh, ntohl(key->ipv6_label),
       ntohl(mask->ipv6_label));
  flow_key->ipv6.label =
      *(__be32 *)nh & htonl(IPV6_FLOWINFO_FLOWLABEL);
 }
 if (mask->ipv6_hlimit) {
  OVS_SET_MASKED(nh->hop_limit, key->ipv6_hlimit,
          mask->ipv6_hlimit);
  flow_key->ip.ttl = nh->hop_limit;
 }
 return 0;
}

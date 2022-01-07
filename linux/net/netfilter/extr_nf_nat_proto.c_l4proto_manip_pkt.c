
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int protonum; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
 int dccp_manip_pkt (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ;
 int gre_manip_pkt (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ;
 int icmp_manip_pkt (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ;
 int icmpv6_manip_pkt (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ;
 int sctp_manip_pkt (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ;
 int tcp_manip_pkt (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ;
 int udp_manip_pkt (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ;
 int udplite_manip_pkt (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ;

__attribute__((used)) static bool l4proto_manip_pkt(struct sk_buff *skb,
         unsigned int iphdroff, unsigned int hdroff,
         const struct nf_conntrack_tuple *tuple,
         enum nf_nat_manip_type maniptype)
{
 switch (tuple->dst.protonum) {
 case 130:
  return tcp_manip_pkt(skb, iphdroff, hdroff,
         tuple, maniptype);
 case 129:
  return udp_manip_pkt(skb, iphdroff, hdroff,
         tuple, maniptype);
 case 128:
  return udplite_manip_pkt(skb, iphdroff, hdroff,
      tuple, maniptype);
 case 131:
  return sctp_manip_pkt(skb, iphdroff, hdroff,
          tuple, maniptype);
 case 133:
  return icmp_manip_pkt(skb, iphdroff, hdroff,
          tuple, maniptype);
 case 132:
  return icmpv6_manip_pkt(skb, iphdroff, hdroff,
     tuple, maniptype);
 case 135:
  return dccp_manip_pkt(skb, iphdroff, hdroff,
          tuple, maniptype);
 case 134:
  return gre_manip_pkt(skb, iphdroff, hdroff,
         tuple, maniptype);
 }


 return 1;
}

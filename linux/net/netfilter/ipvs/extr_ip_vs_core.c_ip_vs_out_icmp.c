
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; } ;
struct sk_buff {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct iphdr {int ihl; scalar_t__ type; int frag_off; int protocol; int saddr; int daddr; } ;
struct ip_vs_protocol {int conn_out_get; scalar_t__ dont_defrag; } ;
struct ip_vs_iphdr {int len; } ;
struct ip_vs_conn {int dummy; } ;
struct icmphdr {int ihl; scalar_t__ type; int frag_off; int protocol; int saddr; int daddr; } ;
typedef int _icmph ;
typedef int _ciph ;


 int AF_INET ;
 scalar_t__ ICMP_DEST_UNREACH ;
 scalar_t__ ICMP_SOURCE_QUENCH ;
 scalar_t__ ICMP_TIME_EXCEEDED ;
 struct ip_vs_conn* INDIRECT_CALL_1 (int ,int ,struct netns_ipvs*,int ,struct sk_buff*,struct ip_vs_iphdr*) ;
 int IP_OFFSET ;
 int IP_VS_DBG (int,char*,scalar_t__,int ,int *,int *) ;
 int IP_VS_DBG_PKT (int,int ,struct ip_vs_protocol*,struct sk_buff*,unsigned int,char*) ;
 int NF_ACCEPT ;
 int NF_DROP ;
 int NF_STOLEN ;
 int handle_response_icmp (int ,struct sk_buff*,union nf_inet_addr*,int ,struct ip_vs_conn*,struct ip_vs_protocol*,int ,unsigned int,unsigned int) ;
 int htons (int ) ;
 int icmp_id (struct iphdr*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_is_fragment (struct iphdr*) ;
 int ip_vs_conn_out_get_proto ;
 int ip_vs_defrag_user (unsigned int) ;
 int ip_vs_fill_iph_skb_icmp (int ,struct sk_buff*,unsigned int,int,struct ip_vs_iphdr*) ;
 scalar_t__ ip_vs_gather_frags (struct netns_ipvs*,struct sk_buff*,int ) ;
 struct ip_vs_protocol* ip_vs_proto_get (int ) ;
 int ntohs (int ) ;
 struct iphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct iphdr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ip_vs_out_icmp(struct netns_ipvs *ipvs, struct sk_buff *skb,
     int *related, unsigned int hooknum)
{
 struct iphdr *iph;
 struct icmphdr _icmph, *ic;
 struct iphdr _ciph, *cih;
 struct ip_vs_iphdr ciph;
 struct ip_vs_conn *cp;
 struct ip_vs_protocol *pp;
 unsigned int offset, ihl;
 union nf_inet_addr snet;

 *related = 1;


 if (ip_is_fragment(ip_hdr(skb))) {
  if (ip_vs_gather_frags(ipvs, skb, ip_vs_defrag_user(hooknum)))
   return NF_STOLEN;
 }

 iph = ip_hdr(skb);
 offset = ihl = iph->ihl * 4;
 ic = skb_header_pointer(skb, offset, sizeof(_icmph), &_icmph);
 if (ic == ((void*)0))
  return NF_DROP;

 IP_VS_DBG(12, "Outgoing ICMP (%d,%d) %pI4->%pI4\n",
    ic->type, ntohs(icmp_id(ic)),
    &iph->saddr, &iph->daddr);
 if ((ic->type != ICMP_DEST_UNREACH) &&
     (ic->type != ICMP_SOURCE_QUENCH) &&
     (ic->type != ICMP_TIME_EXCEEDED)) {
  *related = 0;
  return NF_ACCEPT;
 }


 offset += sizeof(_icmph);
 cih = skb_header_pointer(skb, offset, sizeof(_ciph), &_ciph);
 if (cih == ((void*)0))
  return NF_ACCEPT;

 pp = ip_vs_proto_get(cih->protocol);
 if (!pp)
  return NF_ACCEPT;


 if (unlikely(cih->frag_off & htons(IP_OFFSET) &&
       pp->dont_defrag))
  return NF_ACCEPT;

 IP_VS_DBG_PKT(11, AF_INET, pp, skb, offset,
        "Checking outgoing ICMP for");

 ip_vs_fill_iph_skb_icmp(AF_INET, skb, offset, 1, &ciph);


 cp = INDIRECT_CALL_1(pp->conn_out_get, ip_vs_conn_out_get_proto,
        ipvs, AF_INET, skb, &ciph);
 if (!cp)
  return NF_ACCEPT;

 snet.ip = iph->saddr;
 return handle_response_icmp(AF_INET, skb, &snet, cih->protocol, cp,
        pp, ciph.len, ihl, hooknum);
}

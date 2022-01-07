
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct iphdr {int frag_off; int protocol; int ihl; int tot_len; } ;
 int IP_OFFSET ;
 int TCA_CSUM_UPDATE_FLAG_ICMP ;
 int TCA_CSUM_UPDATE_FLAG_IGMP ;
 int TCA_CSUM_UPDATE_FLAG_IPV4HDR ;
 int TCA_CSUM_UPDATE_FLAG_SCTP ;
 int TCA_CSUM_UPDATE_FLAG_TCP ;
 int TCA_CSUM_UPDATE_FLAG_UDP ;
 int TCA_CSUM_UPDATE_FLAG_UDPLITE ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_send_check (struct iphdr*) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_network_offset (struct sk_buff*) ;
 scalar_t__ skb_try_make_writable (struct sk_buff*,int) ;
 int tcf_csum_ipv4_icmp (struct sk_buff*,int,int ) ;
 int tcf_csum_ipv4_igmp (struct sk_buff*,int,int ) ;
 int tcf_csum_ipv4_tcp (struct sk_buff*,int,int ) ;
 int tcf_csum_ipv4_udp (struct sk_buff*,int,int ,int) ;
 int tcf_csum_sctp (struct sk_buff*,int,int ) ;

__attribute__((used)) static int tcf_csum_ipv4(struct sk_buff *skb, u32 update_flags)
{
 const struct iphdr *iph;
 int ntkoff;

 ntkoff = skb_network_offset(skb);

 if (!pskb_may_pull(skb, sizeof(*iph) + ntkoff))
  goto fail;

 iph = ip_hdr(skb);

 switch (iph->frag_off & htons(IP_OFFSET) ? 0 : iph->protocol) {
 case 133:
  if (update_flags & TCA_CSUM_UPDATE_FLAG_ICMP)
   if (!tcf_csum_ipv4_icmp(skb, iph->ihl * 4,
      ntohs(iph->tot_len)))
    goto fail;
  break;
 case 132:
  if (update_flags & TCA_CSUM_UPDATE_FLAG_IGMP)
   if (!tcf_csum_ipv4_igmp(skb, iph->ihl * 4,
      ntohs(iph->tot_len)))
    goto fail;
  break;
 case 130:
  if (update_flags & TCA_CSUM_UPDATE_FLAG_TCP)
   if (!tcf_csum_ipv4_tcp(skb, iph->ihl * 4,
            ntohs(iph->tot_len)))
    goto fail;
  break;
 case 129:
  if (update_flags & TCA_CSUM_UPDATE_FLAG_UDP)
   if (!tcf_csum_ipv4_udp(skb, iph->ihl * 4,
            ntohs(iph->tot_len), 0))
    goto fail;
  break;
 case 128:
  if (update_flags & TCA_CSUM_UPDATE_FLAG_UDPLITE)
   if (!tcf_csum_ipv4_udp(skb, iph->ihl * 4,
            ntohs(iph->tot_len), 1))
    goto fail;
  break;
 case 131:
  if ((update_flags & TCA_CSUM_UPDATE_FLAG_SCTP) &&
      !tcf_csum_sctp(skb, iph->ihl * 4, ntohs(iph->tot_len)))
   goto fail;
  break;
 }

 if (update_flags & TCA_CSUM_UPDATE_FLAG_IPV4HDR) {
  if (skb_try_make_writable(skb, sizeof(*iph) + ntkoff))
   goto fail;

  ip_send_check(ip_hdr(skb));
 }

 return 1;

fail:
 return 0;
}

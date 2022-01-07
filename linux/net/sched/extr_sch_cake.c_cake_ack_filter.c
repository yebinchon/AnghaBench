
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcphdr {scalar_t__ source; scalar_t__ dest; int ack_seq; } ;
typedef struct sk_buff {struct sk_buff const* next; } const sk_buff ;
struct ipv6hdr {int payload_len; int daddr; int saddr; } ;
struct iphdr {int version; scalar_t__ saddr; scalar_t__ daddr; int ihl; int tot_len; } ;
struct cake_sched_data {scalar_t__ ack_filter; } ;
struct cake_flow {struct sk_buff const* head; struct sk_buff const* tail; } ;
typedef int _tcph_check ;
typedef int _tcph ;
typedef int __be32 ;


 scalar_t__ CAKE_ACK_AGGRESSIVE ;
 int TCP_FLAG_ACK ;
 int TCP_FLAG_CWR ;
 int TCP_FLAG_ECE ;
 int TCP_FLAG_SYN ;
 int WARN_ON (int) ;
 int __tcp_hdrlen (struct tcphdr const*) ;
 scalar_t__ after (scalar_t__,scalar_t__) ;
 struct iphdr* cake_get_iphdr (struct sk_buff const*,struct ipv6hdr*) ;
 struct tcphdr* cake_get_tcphdr (struct sk_buff const*,...) ;
 int cake_tcph_get_tstamp (struct tcphdr const*,int *,int *) ;
 int cake_tcph_may_drop (struct tcphdr const*,int ,int ) ;
 int cake_tcph_sack_compare (struct tcphdr const*,struct tcphdr const*) ;
 scalar_t__ ipv6_addr_cmp (int *,int *) ;
 scalar_t__ ntohl (int ) ;
 int ntohs (int ) ;
 int skb_mark_not_on_list (struct sk_buff const*) ;
 int tcp_flag_word (struct tcphdr const*) ;

__attribute__((used)) static struct sk_buff *cake_ack_filter(struct cake_sched_data *q,
           struct cake_flow *flow)
{
 bool aggressive = q->ack_filter == CAKE_ACK_AGGRESSIVE;
 struct sk_buff *elig_ack = ((void*)0), *elig_ack_prev = ((void*)0);
 struct sk_buff *skb_check, *skb_prev = ((void*)0);
 const struct ipv6hdr *ipv6h, *ipv6h_check;
 unsigned char _tcph[64], _tcph_check[64];
 const struct tcphdr *tcph, *tcph_check;
 const struct iphdr *iph, *iph_check;
 struct ipv6hdr _iph, _iph_check;
 const struct sk_buff *skb;
 int seglen, num_found = 0;
 u32 tstamp = 0, tsecr = 0;
 __be32 elig_flags = 0;
 int sack_comp;


 if (flow->head == flow->tail)
  return ((void*)0);

 skb = flow->tail;
 tcph = cake_get_tcphdr(skb, _tcph, sizeof(_tcph));
 iph = cake_get_iphdr(skb, &_iph);
 if (!tcph)
  return ((void*)0);

 cake_tcph_get_tstamp(tcph, &tstamp, &tsecr);




 if ((tcp_flag_word(tcph) &
      (TCP_FLAG_ACK | TCP_FLAG_SYN)) != TCP_FLAG_ACK)
  return ((void*)0);






 for (skb_check = flow->head;
      skb_check && skb_check != skb;
      skb_prev = skb_check, skb_check = skb_check->next) {
  iph_check = cake_get_iphdr(skb_check, &_iph_check);
  tcph_check = cake_get_tcphdr(skb_check, &_tcph_check,
          sizeof(_tcph_check));




  if (!tcph_check || iph->version != iph_check->version ||
      tcph_check->source != tcph->source ||
      tcph_check->dest != tcph->dest)
   continue;

  if (iph_check->version == 4) {
   if (iph_check->saddr != iph->saddr ||
       iph_check->daddr != iph->daddr)
    continue;

   seglen = ntohs(iph_check->tot_len) -
           (4 * iph_check->ihl);
  } else if (iph_check->version == 6) {
   ipv6h = (struct ipv6hdr *)iph;
   ipv6h_check = (struct ipv6hdr *)iph_check;

   if (ipv6_addr_cmp(&ipv6h_check->saddr, &ipv6h->saddr) ||
       ipv6_addr_cmp(&ipv6h_check->daddr, &ipv6h->daddr))
    continue;

   seglen = ntohs(ipv6h_check->payload_len);
  } else {
   WARN_ON(1);
   continue;
  }





  if (elig_ack && (tcp_flag_word(tcph_check) &
     (TCP_FLAG_ECE | TCP_FLAG_CWR)) != elig_flags) {
   elig_ack = ((void*)0);
   elig_ack_prev = ((void*)0);
   num_found--;
  }







  if (!cake_tcph_may_drop(tcph_check, tstamp, tsecr) ||
      (seglen - __tcp_hdrlen(tcph_check)) != 0 ||
      after(ntohl(tcph_check->ack_seq), ntohl(tcph->ack_seq)))
   continue;







  sack_comp = cake_tcph_sack_compare(tcph_check, tcph);

  if (sack_comp < 0 ||
      (ntohl(tcph_check->ack_seq) == ntohl(tcph->ack_seq) &&
       sack_comp == 0))
   continue;
  if (!elig_ack) {
   elig_ack = skb_check;
   elig_ack_prev = skb_prev;
   elig_flags = (tcp_flag_word(tcph_check)
          & (TCP_FLAG_ECE | TCP_FLAG_CWR));
  }

  if (num_found++ > 0)
   goto found;
 }







 if (elig_ack && aggressive && elig_ack->next == skb &&
     (elig_flags == (tcp_flag_word(tcph) &
       (TCP_FLAG_ECE | TCP_FLAG_CWR))))
  goto found;

 return ((void*)0);

found:
 if (elig_ack_prev)
  elig_ack_prev->next = elig_ack->next;
 else
  flow->head = elig_ack->next;

 skb_mark_not_on_list(elig_ack);

 return elig_ack;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int check; } ;
struct tcphdr {int check; } ;
struct tcf_result {int dummy; } ;
struct TYPE_2__ {int drops; } ;
struct tcf_nat {int old_addr; int new_addr; int mask; int flags; int tcf_action; int tcf_lock; TYPE_1__ tcf_qstats; int tcf_bstats; int tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int ip_summed; } ;
struct iphdr {int saddr; int daddr; int frag_off; scalar_t__ protocol; int ihl; int check; } ;
struct icmphdr {int checksum; int type; } ;
typedef int __be32 ;


 int CHECKSUM_PARTIAL ;
 int CSUM_MANGLED_0 ;
 int ICMP_DEST_UNREACH ;
 int ICMP_PARAMETERPROB ;
 int ICMP_TIME_EXCEEDED ;



 int IP_OFFSET ;
 int TCA_NAT_FLAG_EGRESS ;
 int TC_ACT_SHOT ;
 int bstats_update (int *,struct sk_buff*) ;
 int csum_replace4 (int *,int,int) ;
 int htons (int ) ;
 int inet_proto_csum_replace4 (int *,struct sk_buff*,int,int,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 scalar_t__ skb_try_make_writable (struct sk_buff*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcf_lastuse_update (int *) ;
 struct tcf_nat* to_tcf_nat (struct tc_action const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcf_nat_act(struct sk_buff *skb, const struct tc_action *a,
         struct tcf_result *res)
{
 struct tcf_nat *p = to_tcf_nat(a);
 struct iphdr *iph;
 __be32 old_addr;
 __be32 new_addr;
 __be32 mask;
 __be32 addr;
 int egress;
 int action;
 int ihl;
 int noff;

 spin_lock(&p->tcf_lock);

 tcf_lastuse_update(&p->tcf_tm);
 old_addr = p->old_addr;
 new_addr = p->new_addr;
 mask = p->mask;
 egress = p->flags & TCA_NAT_FLAG_EGRESS;
 action = p->tcf_action;

 bstats_update(&p->tcf_bstats, skb);

 spin_unlock(&p->tcf_lock);

 if (unlikely(action == TC_ACT_SHOT))
  goto drop;

 noff = skb_network_offset(skb);
 if (!pskb_may_pull(skb, sizeof(*iph) + noff))
  goto drop;

 iph = ip_hdr(skb);

 if (egress)
  addr = iph->saddr;
 else
  addr = iph->daddr;

 if (!((old_addr ^ addr) & mask)) {
  if (skb_try_make_writable(skb, sizeof(*iph) + noff))
   goto drop;

  new_addr &= mask;
  new_addr |= addr & ~mask;


  iph = ip_hdr(skb);
  if (egress)
   iph->saddr = new_addr;
  else
   iph->daddr = new_addr;

  csum_replace4(&iph->check, addr, new_addr);
 } else if ((iph->frag_off & htons(IP_OFFSET)) ||
     iph->protocol != 130) {
  goto out;
 }

 ihl = iph->ihl * 4;


 switch (iph->frag_off & htons(IP_OFFSET) ? 0 : iph->protocol) {
 case 129:
 {
  struct tcphdr *tcph;

  if (!pskb_may_pull(skb, ihl + sizeof(*tcph) + noff) ||
      skb_try_make_writable(skb, ihl + sizeof(*tcph) + noff))
   goto drop;

  tcph = (void *)(skb_network_header(skb) + ihl);
  inet_proto_csum_replace4(&tcph->check, skb, addr, new_addr,
      1);
  break;
 }
 case 128:
 {
  struct udphdr *udph;

  if (!pskb_may_pull(skb, ihl + sizeof(*udph) + noff) ||
      skb_try_make_writable(skb, ihl + sizeof(*udph) + noff))
   goto drop;

  udph = (void *)(skb_network_header(skb) + ihl);
  if (udph->check || skb->ip_summed == CHECKSUM_PARTIAL) {
   inet_proto_csum_replace4(&udph->check, skb, addr,
       new_addr, 1);
   if (!udph->check)
    udph->check = CSUM_MANGLED_0;
  }
  break;
 }
 case 130:
 {
  struct icmphdr *icmph;

  if (!pskb_may_pull(skb, ihl + sizeof(*icmph) + noff))
   goto drop;

  icmph = (void *)(skb_network_header(skb) + ihl);

  if ((icmph->type != ICMP_DEST_UNREACH) &&
      (icmph->type != ICMP_TIME_EXCEEDED) &&
      (icmph->type != ICMP_PARAMETERPROB))
   break;

  if (!pskb_may_pull(skb, ihl + sizeof(*icmph) + sizeof(*iph) +
     noff))
   goto drop;

  icmph = (void *)(skb_network_header(skb) + ihl);
  iph = (void *)(icmph + 1);
  if (egress)
   addr = iph->daddr;
  else
   addr = iph->saddr;

  if ((old_addr ^ addr) & mask)
   break;

  if (skb_try_make_writable(skb, ihl + sizeof(*icmph) +
       sizeof(*iph) + noff))
   goto drop;

  icmph = (void *)(skb_network_header(skb) + ihl);
  iph = (void *)(icmph + 1);

  new_addr &= mask;
  new_addr |= addr & ~mask;


  if (egress)
   iph->daddr = new_addr;
  else
   iph->saddr = new_addr;

  inet_proto_csum_replace4(&icmph->checksum, skb, addr, new_addr,
      0);
  break;
 }
 default:
  break;
 }

out:
 return action;

drop:
 spin_lock(&p->tcf_lock);
 p->tcf_qstats.drops++;
 spin_unlock(&p->tcf_lock);
 return TC_ACT_SHOT;
}

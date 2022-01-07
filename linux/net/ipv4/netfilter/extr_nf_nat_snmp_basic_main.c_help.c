
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ source; scalar_t__ dest; int len; } ;
struct sk_buff {int len; } ;
struct nf_conn {int status; } ;
struct iphdr {int ihl; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int __be32 ;


 int CTINFO2DIR (int) ;
 int IPS_NAT_MASK ;
 int IP_CT_DIR_ORIGINAL ;
 int IP_CT_DIR_REPLY ;
 int NF_ACCEPT ;
 int NF_DROP ;
 int SNMP_PORT ;
 int SNMP_TRAP_PORT ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int nf_ct_helper_log (struct sk_buff*,struct nf_conn*,char*) ;
 int ntohs (int ) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,int) ;
 int snmp_lock ;
 unsigned int snmp_translate (struct nf_conn*,int,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int help(struct sk_buff *skb, unsigned int protoff,
  struct nf_conn *ct,
  enum ip_conntrack_info ctinfo)
{
 int dir = CTINFO2DIR(ctinfo);
 unsigned int ret;
 const struct iphdr *iph = ip_hdr(skb);
 const struct udphdr *udph = (struct udphdr *)((__be32 *)iph + iph->ihl);


 if (udph->source == htons(SNMP_PORT) && dir != IP_CT_DIR_REPLY)
  return NF_ACCEPT;
 if (udph->dest == htons(SNMP_TRAP_PORT) && dir != IP_CT_DIR_ORIGINAL)
  return NF_ACCEPT;


 if (!(ct->status & IPS_NAT_MASK))
  return NF_ACCEPT;






 if (ntohs(udph->len) != skb->len - (iph->ihl << 2)) {
  nf_ct_helper_log(skb, ct, "dropping malformed packet\n");
  return NF_DROP;
 }

 if (skb_ensure_writable(skb, skb->len)) {
  nf_ct_helper_log(skb, ct, "cannot mangle packet");
  return NF_DROP;
 }

 spin_lock_bh(&snmp_lock);
 ret = snmp_translate(ct, dir, skb);
 spin_unlock_bh(&snmp_lock);
 return ret;
}

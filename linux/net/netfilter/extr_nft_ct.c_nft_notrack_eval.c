
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_regs {int dummy; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_expr {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IP_CT_UNTRACKED ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_ct_set (struct sk_buff*,struct nf_conn*,int) ;

__attribute__((used)) static void nft_notrack_eval(const struct nft_expr *expr,
        struct nft_regs *regs,
        const struct nft_pktinfo *pkt)
{
 struct sk_buff *skb = pkt->skb;
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct;

 ct = nf_ct_get(pkt->skb, &ctinfo);

 if (ct || ctinfo == IP_CT_UNTRACKED)
  return;

 nf_ct_set(skb, ct, IP_CT_UNTRACKED);
}

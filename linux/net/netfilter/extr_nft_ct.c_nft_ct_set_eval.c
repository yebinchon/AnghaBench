
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct sk_buff {int dummy; } ;
struct nft_regs {void** data; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_expr {int dummy; } ;
struct nft_ct {size_t sreg; int key; } ;
struct nf_conntrack_ecache {void* ctmask; } ;
struct nf_conn {void* mark; void* secmark; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int GFP_ATOMIC ;
 int IPCT_MARK ;
 int IPCT_SECMARK ;




 int NF_CT_LABELS_MAX_SIZE ;
 int nf_connlabels_replace (struct nf_conn*,void**,void**,int) ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 int nf_ct_ecache_ext_add (struct nf_conn*,void*,int ,int ) ;
 struct nf_conntrack_ecache* nf_ct_ecache_find (struct nf_conn*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_ct_is_confirmed (struct nf_conn*) ;
 scalar_t__ nf_ct_is_template (struct nf_conn*) ;
 struct nft_ct* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_ct_set_eval(const struct nft_expr *expr,
       struct nft_regs *regs,
       const struct nft_pktinfo *pkt)
{
 const struct nft_ct *priv = nft_expr_priv(expr);
 struct sk_buff *skb = pkt->skb;



 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct;

 ct = nf_ct_get(skb, &ctinfo);
 if (ct == ((void*)0) || nf_ct_is_template(ct))
  return;

 switch (priv->key) {
 default:
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct sk_buff {int nf_trace; void* secmark; int pkt_type; void* priority; void* mark; } ;
struct nft_regs {void** data; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_meta {size_t sreg; int key; } ;
struct nft_expr {int dummy; } ;







 int WARN_ON (int) ;
 struct nft_meta* nft_expr_priv (struct nft_expr const*) ;
 int nft_reg_load8 (void**) ;
 int skb_pkt_type_ok (int ) ;

void nft_meta_set_eval(const struct nft_expr *expr,
         struct nft_regs *regs,
         const struct nft_pktinfo *pkt)
{
 const struct nft_meta *meta = nft_expr_priv(expr);
 struct sk_buff *skb = pkt->skb;
 u32 *sreg = &regs->data[meta->sreg];
 u32 value = *sreg;
 u8 value8;

 switch (meta->key) {
 case 132:
  skb->mark = value;
  break;
 case 129:
  skb->priority = value;
  break;
 case 130:
  value8 = nft_reg_load8(sreg);

  if (skb->pkt_type != value8 &&
      skb_pkt_type_ok(value8) &&
      skb_pkt_type_ok(skb->pkt_type))
   skb->pkt_type = value8;
  break;
 case 131:
  value8 = nft_reg_load8(sreg);

  skb->nf_trace = !!value8;
  break;





 default:
  WARN_ON(1);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nft_set_ext {int dummy; } ;
struct nft_set {int flags; int dlen; TYPE_1__* ops; } ;
struct TYPE_4__ {int code; } ;
struct nft_regs {int * data; TYPE_2__ verdict; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_lookup {size_t sreg; int invert; size_t dreg; struct nft_set* set; } ;
struct nft_expr {int dummy; } ;
struct TYPE_3__ {int (* lookup ) (int ,struct nft_set const*,int *,struct nft_set_ext const**) ;} ;


 int NFT_BREAK ;
 int NFT_SET_MAP ;
 int nft_data_copy (int *,int ,int ) ;
 struct nft_lookup* nft_expr_priv (struct nft_expr const*) ;
 int nft_net (struct nft_pktinfo const*) ;
 int nft_set_ext_data (struct nft_set_ext const*) ;
 int stub1 (int ,struct nft_set const*,int *,struct nft_set_ext const**) ;

void nft_lookup_eval(const struct nft_expr *expr,
       struct nft_regs *regs,
       const struct nft_pktinfo *pkt)
{
 const struct nft_lookup *priv = nft_expr_priv(expr);
 const struct nft_set *set = priv->set;
 const struct nft_set_ext *ext;
 bool found;

 found = set->ops->lookup(nft_net(pkt), set, &regs->data[priv->sreg],
     &ext) ^ priv->invert;
 if (!found) {
  regs->verdict.code = NFT_BREAK;
  return;
 }

 if (set->flags & NFT_SET_MAP)
  nft_data_copy(&regs->data[priv->dreg],
         nft_set_ext_data(ext), set->dlen);

}

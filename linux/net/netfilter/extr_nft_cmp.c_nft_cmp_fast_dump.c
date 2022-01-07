
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_data {int * data; } ;
struct nft_cmp_fast_expr {int len; int data; int sreg; } ;


 int BITS_PER_BYTE ;
 int NFTA_CMP_DATA ;
 int NFTA_CMP_OP ;
 int NFTA_CMP_SREG ;
 int NFT_CMP_EQ ;
 int NFT_DATA_VALUE ;
 int htonl (int ) ;
 scalar_t__ nft_data_dump (struct sk_buff*,int ,struct nft_data*,int ,int) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_cmp_fast_expr* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_cmp_fast_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_cmp_fast_expr *priv = nft_expr_priv(expr);
 struct nft_data data;

 if (nft_dump_register(skb, NFTA_CMP_SREG, priv->sreg))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_CMP_OP, htonl(NFT_CMP_EQ)))
  goto nla_put_failure;

 data.data[0] = priv->data;
 if (nft_data_dump(skb, NFTA_CMP_DATA, &data,
     NFT_DATA_VALUE, priv->len / BITS_PER_BYTE) < 0)
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}

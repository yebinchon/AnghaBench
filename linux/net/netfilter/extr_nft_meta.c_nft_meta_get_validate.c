
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_meta {scalar_t__ key; } ;
struct nft_expr {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int family; int chain; } ;


 int EOPNOTSUPP ;




 scalar_t__ NFT_META_SECPATH ;
 int NF_INET_FORWARD ;
 int NF_INET_LOCAL_IN ;
 int NF_INET_PRE_ROUTING ;
 int NF_NETDEV_INGRESS ;
 int nft_chain_validate_hooks (int ,unsigned int) ;
 struct nft_meta* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int nft_meta_get_validate(const struct nft_ctx *ctx,
     const struct nft_expr *expr,
     const struct nft_data **data)
{
 return 0;

}

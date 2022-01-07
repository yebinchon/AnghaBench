
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct nft_meta {int key; int dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EOPNOTSUPP ;
 unsigned int IFNAMSIZ ;
 size_t NFTA_META_DREG ;
 size_t NFTA_META_KEY ;
 int NFT_DATA_VALUE ;
 struct nft_meta* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_prandom_state ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,unsigned int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;
 int prandom_init_once (int *) ;

int nft_meta_get_init(const struct nft_ctx *ctx,
        const struct nft_expr *expr,
        const struct nlattr * const tb[])
{
 struct nft_meta *priv = nft_expr_priv(expr);
 unsigned int len;

 priv->key = ntohl(nla_get_be32(tb[NFTA_META_KEY]));
 switch (priv->key) {
 case 136:
 case 149:
 case 140:
  len = sizeof(u16);
  break;
 case 145:
 case 148:
 case 147:
 case 137:
 case 146:
 case 153:
 case 144:
 case 131:
 case 132:






 case 139:
 case 154:
 case 152:
 case 143:



  len = sizeof(u32);
  break;
 case 150:
 case 141:
 case 151:
 case 142:
  len = IFNAMSIZ;
  break;
 case 138:
  prandom_init_once(&nft_prandom_state);
  len = sizeof(u32);
  break;





 case 128:
  len = sizeof(u64);
  break;
 case 130:
  len = sizeof(u8);
  break;
 case 129:
  len = sizeof(u32);
  break;
 default:
  return -EOPNOTSUPP;
 }

 priv->dreg = nft_parse_register(tb[NFTA_META_DREG]);
 return nft_validate_register_store(ctx, priv->dreg, ((void*)0),
        NFT_DATA_VALUE, len);
}

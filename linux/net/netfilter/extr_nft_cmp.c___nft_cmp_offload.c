
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nft_offload_reg {int offset; size_t key; int base_offset; int mask; int len; } ;
struct nft_offload_ctx {struct nft_offload_reg* regs; } ;
struct TYPE_3__ {int * offset; int used_keys; } ;
struct TYPE_4__ {TYPE_1__ dissector; int key; int mask; } ;
struct nft_flow_rule {TYPE_2__ match; } ;
struct nft_cmp_expr {size_t sreg; scalar_t__ op; int len; int data; } ;


 int BIT (size_t) ;
 int EOPNOTSUPP ;
 scalar_t__ NFT_CMP_EQ ;
 int memcpy (int *,int *,int ) ;
 int nft_offload_update_dependency (struct nft_offload_ctx*,int *,int ) ;

__attribute__((used)) static int __nft_cmp_offload(struct nft_offload_ctx *ctx,
        struct nft_flow_rule *flow,
        const struct nft_cmp_expr *priv)
{
 struct nft_offload_reg *reg = &ctx->regs[priv->sreg];
 u8 *mask = (u8 *)&flow->match.mask;
 u8 *key = (u8 *)&flow->match.key;

 if (priv->op != NFT_CMP_EQ || reg->len != priv->len)
  return -EOPNOTSUPP;

 memcpy(key + reg->offset, &priv->data, priv->len);
 memcpy(mask + reg->offset, &reg->mask, priv->len);

 flow->match.dissector.used_keys |= BIT(reg->key);
 flow->match.dissector.offset[reg->key] = reg->base_offset;

 nft_offload_update_dependency(ctx, &priv->data, priv->len);

 return 0;
}

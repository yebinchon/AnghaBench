
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_iter {int dummy; } ;
struct nft_set_ext {int dummy; } ;
struct nft_set_elem {int priv; } ;
struct nft_set {scalar_t__ dtype; int dlen; } ;
struct nft_ctx {int dummy; } ;
typedef enum nft_registers { ____Placeholder_nft_registers } nft_registers ;


 scalar_t__ NFT_DATA_VALUE ;
 scalar_t__ NFT_DATA_VERDICT ;
 struct nft_set_ext* nft_set_elem_ext (struct nft_set*,int ) ;
 int nft_set_ext_data (struct nft_set_ext const*) ;
 int nft_type_to_reg (scalar_t__) ;
 int nft_validate_register_store (struct nft_ctx const*,int,int ,scalar_t__,int ) ;

__attribute__((used)) static int nf_tables_bind_check_setelem(const struct nft_ctx *ctx,
     struct nft_set *set,
     const struct nft_set_iter *iter,
     struct nft_set_elem *elem)
{
 const struct nft_set_ext *ext = nft_set_elem_ext(set, elem->priv);
 enum nft_registers dreg;

 dreg = nft_type_to_reg(set->dtype);
 return nft_validate_register_store(ctx, dreg, nft_set_ext_data(ext),
        set->dtype == NFT_DATA_VERDICT ?
        NFT_DATA_VERDICT : NFT_DATA_VALUE,
        set->dlen);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_ext {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int NFT_SET_EXT_EXPR ;
 int kfree (void*) ;
 int nf_tables_expr_destroy (struct nft_ctx const*,int ) ;
 struct nft_set_ext* nft_set_elem_ext (struct nft_set const*,void*) ;
 scalar_t__ nft_set_ext_exists (struct nft_set_ext*,int ) ;
 int nft_set_ext_expr (struct nft_set_ext*) ;

__attribute__((used)) static void nf_tables_set_elem_destroy(const struct nft_ctx *ctx,
           const struct nft_set *set, void *elem)
{
 struct nft_set_ext *ext = nft_set_elem_ext(set, elem);

 if (nft_set_ext_exists(ext, NFT_SET_EXT_EXPR))
  nf_tables_expr_destroy(ctx, nft_set_ext_expr(ext));
 kfree(elem);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_set_iter {int dummy; } ;
struct nft_set_ext {int dummy; } ;
struct nft_set_elem {int priv; } ;
struct nft_set {int dummy; } ;
struct TYPE_2__ {int code; int chain; } ;
struct nft_data {TYPE_1__ verdict; } ;
struct nft_ctx {int dummy; } ;




 int NFT_SET_ELEM_INTERVAL_END ;
 int NFT_SET_EXT_FLAGS ;
 int nf_tables_check_loops (struct nft_ctx const*,int ) ;
 struct nft_set_ext* nft_set_elem_ext (struct nft_set*,int ) ;
 struct nft_data* nft_set_ext_data (struct nft_set_ext const*) ;
 scalar_t__ nft_set_ext_exists (struct nft_set_ext const*,int ) ;
 int* nft_set_ext_flags (struct nft_set_ext const*) ;

__attribute__((used)) static int nf_tables_loop_check_setelem(const struct nft_ctx *ctx,
     struct nft_set *set,
     const struct nft_set_iter *iter,
     struct nft_set_elem *elem)
{
 const struct nft_set_ext *ext = nft_set_elem_ext(set, elem->priv);
 const struct nft_data *data;

 if (nft_set_ext_exists(ext, NFT_SET_EXT_FLAGS) &&
     *nft_set_ext_flags(ext) & NFT_SET_ELEM_INTERVAL_END)
  return 0;

 data = nft_set_ext_data(ext);
 switch (data->verdict.code) {
 case 128:
 case 129:
  return nf_tables_check_loops(ctx, data->verdict.chain);
 default:
  return 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_binding {int dummy; } ;
struct nft_set {int use; } ;
struct nft_ctx {int dummy; } ;
typedef enum nft_trans_phase { ____Placeholder_nft_trans_phase } nft_trans_phase ;



 int NFT_TRANS_COMMIT ;


 int nf_tables_unbind_set (struct nft_ctx const*,struct nft_set*,struct nft_set_binding*,int) ;

void nf_tables_deactivate_set(const struct nft_ctx *ctx, struct nft_set *set,
         struct nft_set_binding *binding,
         enum nft_trans_phase phase)
{
 switch (phase) {
 case 129:
  set->use--;
  return;
 case 130:
 case 128:
  set->use--;

 default:
  nf_tables_unbind_set(ctx, set, binding,
         phase == NFT_TRANS_COMMIT);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_flowtable {int use; } ;
struct nft_ctx {int dummy; } ;
typedef enum nft_trans_phase { ____Placeholder_nft_trans_phase } nft_trans_phase ;






void nf_tables_deactivate_flowtable(const struct nft_ctx *ctx,
        struct nft_flowtable *flowtable,
        enum nft_trans_phase phase)
{
 switch (phase) {
 case 129:
 case 130:
 case 128:
  flowtable->use--;

 default:
  return;
 }
}

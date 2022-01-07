
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_rule {int dummy; } ;
struct nft_ctx {TYPE_1__* chain; int net; } ;
struct TYPE_2__ {int use; } ;


 int ENOENT ;
 int nft_deactivate_next (int ,struct nft_rule*) ;
 scalar_t__ nft_is_active_next (int ,struct nft_rule*) ;

__attribute__((used)) static int
nf_tables_delrule_deactivate(struct nft_ctx *ctx, struct nft_rule *rule)
{

 if (nft_is_active_next(ctx->net, rule)) {
  nft_deactivate_next(ctx->net, rule);
  ctx->chain->use--;
  return 0;
 }
 return -ENOENT;
}

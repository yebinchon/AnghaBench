
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set {int bindings; } ;
struct nft_ctx {int dummy; } ;


 scalar_t__ list_empty (int *) ;
 int nft_set_destroy (struct nft_set*) ;
 scalar_t__ nft_set_is_anonymous (struct nft_set*) ;

void nf_tables_destroy_set(const struct nft_ctx *ctx, struct nft_set *set)
{
 if (list_empty(&set->bindings) && nft_set_is_anonymous(set))
  nft_set_destroy(set);
}

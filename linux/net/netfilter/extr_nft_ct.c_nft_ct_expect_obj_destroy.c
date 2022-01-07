
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_object {int dummy; } ;
struct nft_ctx {int family; int net; } ;


 int nf_ct_netns_put (int ,int ) ;

__attribute__((used)) static void nft_ct_expect_obj_destroy(const struct nft_ctx *ctx,
           struct nft_object *obj)
{
 nf_ct_netns_put(ctx->net, ctx->family);
}

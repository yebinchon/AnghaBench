
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_ctx {int net; } ;


 int NFPROTO_IPV4 ;
 int nf_ct_netns_put (int ,int ) ;

__attribute__((used)) static void
nft_redir_ipv4_destroy(const struct nft_ctx *ctx, const struct nft_expr *expr)
{
 nf_ct_netns_put(ctx->net, NFPROTO_IPV4);
}

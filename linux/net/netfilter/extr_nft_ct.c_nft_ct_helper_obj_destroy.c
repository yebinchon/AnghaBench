
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_object {int dummy; } ;
struct nft_ctx {int family; int net; } ;
struct nft_ct_helper_obj {scalar_t__ helper6; scalar_t__ helper4; } ;


 int nf_conntrack_helper_put (scalar_t__) ;
 int nf_ct_netns_put (int ,int ) ;
 struct nft_ct_helper_obj* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static void nft_ct_helper_obj_destroy(const struct nft_ctx *ctx,
          struct nft_object *obj)
{
 struct nft_ct_helper_obj *priv = nft_obj_data(obj);

 if (priv->helper4)
  nf_conntrack_helper_put(priv->helper4);
 if (priv->helper6)
  nf_conntrack_helper_put(priv->helper6);

 nf_ct_netns_put(ctx->net, ctx->family);
}

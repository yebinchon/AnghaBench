
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_tunnel_obj {int md; } ;
struct nft_object {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int metadata_dst_free (int ) ;
 struct nft_tunnel_obj* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static void nft_tunnel_obj_destroy(const struct nft_ctx *ctx,
       struct nft_object *obj)
{
 struct nft_tunnel_obj *priv = nft_obj_data(obj);

 metadata_dst_free(priv->md);
}

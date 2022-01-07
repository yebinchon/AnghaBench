
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct nft_connlimit {int dummy; } ;


 int nft_connlimit_do_init (struct nft_ctx const*,struct nlattr const* const*,struct nft_connlimit*) ;
 struct nft_connlimit* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static int nft_connlimit_obj_init(const struct nft_ctx *ctx,
    const struct nlattr * const tb[],
    struct nft_object *obj)
{
 struct nft_connlimit *priv = nft_obj_data(obj);

 return nft_connlimit_do_init(ctx, tb, priv);
}

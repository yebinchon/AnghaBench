
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_limit {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int nft_limit_init (struct nft_limit*,struct nlattr const* const*,int) ;
 struct nft_limit* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static int nft_limit_obj_bytes_init(const struct nft_ctx *ctx,
        const struct nlattr * const tb[],
        struct nft_object *obj)
{
 struct nft_limit *priv = nft_obj_data(obj);

 return nft_limit_init(priv, tb, 0);
}

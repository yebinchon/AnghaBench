
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_quota {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_ctx {int dummy; } ;


 struct nft_quota* nft_obj_data (struct nft_object*) ;
 int nft_quota_do_init (struct nlattr const* const*,struct nft_quota*) ;

__attribute__((used)) static int nft_quota_obj_init(const struct nft_ctx *ctx,
         const struct nlattr * const tb[],
         struct nft_object *obj)
{
 struct nft_quota *priv = nft_obj_data(obj);

 return nft_quota_do_init(tb, priv);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct nft_counter_percpu_priv {int dummy; } ;


 int nft_counter_do_init (struct nlattr const* const*,struct nft_counter_percpu_priv*) ;
 struct nft_counter_percpu_priv* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static int nft_counter_obj_init(const struct nft_ctx *ctx,
    const struct nlattr * const tb[],
    struct nft_object *obj)
{
 struct nft_counter_percpu_priv *priv = nft_obj_data(obj);

 return nft_counter_do_init(tb, priv);
}

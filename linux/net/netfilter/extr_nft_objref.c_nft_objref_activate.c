
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_object {int use; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 struct nft_object* nft_objref_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_objref_activate(const struct nft_ctx *ctx,
    const struct nft_expr *expr)
{
 struct nft_object *obj = nft_objref_priv(expr);

 obj->use++;
}

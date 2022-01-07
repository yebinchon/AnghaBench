
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_regs {int dummy; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_object {TYPE_1__* ops; } ;
struct nft_expr {int dummy; } ;
struct TYPE_2__ {int (* eval ) (struct nft_object*,struct nft_regs*,struct nft_pktinfo const*) ;} ;


 struct nft_object* nft_objref_priv (struct nft_expr const*) ;
 int stub1 (struct nft_object*,struct nft_regs*,struct nft_pktinfo const*) ;

__attribute__((used)) static void nft_objref_eval(const struct nft_expr *expr,
       struct nft_regs *regs,
       const struct nft_pktinfo *pkt)
{
 struct nft_object *obj = nft_objref_priv(expr);

 obj->ops->eval(obj, regs, pkt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_regs {int dummy; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_counter_percpu_priv {int dummy; } ;


 int nft_counter_do_eval (struct nft_counter_percpu_priv*,struct nft_regs*,struct nft_pktinfo const*) ;
 struct nft_counter_percpu_priv* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_counter_eval(const struct nft_expr *expr,
        struct nft_regs *regs,
        const struct nft_pktinfo *pkt)
{
 struct nft_counter_percpu_priv *priv = nft_expr_priv(expr);

 nft_counter_do_eval(priv, regs, pkt);
}

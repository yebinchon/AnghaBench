
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_fib {int result; } ;
struct nft_expr {int dummy; } ;







 int NF_DROP ;
 struct nft_fib* nft_expr_priv (struct nft_expr const*) ;
 void nft_fib4_eval (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ;
 void nft_fib4_eval_type (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ;
 void nft_fib6_eval (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ;
 void nft_fib6_eval_type (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ;
 int nft_pf (struct nft_pktinfo const*) ;

__attribute__((used)) static void nft_fib_inet_eval(const struct nft_expr *expr,
         struct nft_regs *regs,
         const struct nft_pktinfo *pkt)
{
 const struct nft_fib *priv = nft_expr_priv(expr);

 switch (nft_pf(pkt)) {
 case 132:
  switch (priv->result) {
  case 129:
  case 128:
   return nft_fib4_eval(expr, regs, pkt);
  case 130:
   return nft_fib4_eval_type(expr, regs, pkt);
  }
  break;
 case 131:
  switch (priv->result) {
  case 129:
  case 128:
   return nft_fib6_eval(expr, regs, pkt);
  case 130:
   return nft_fib6_eval_type(expr, regs, pkt);
  }
  break;
 }

 regs->verdict.code = NF_DROP;
}

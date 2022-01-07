
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_regs {int dummy; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* eval ) (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo*) ;} ;


 int X (unsigned long,int ) ;
 int nft_bitwise_eval ;
 int nft_byteorder_eval ;
 int nft_cmp_eval ;
 int nft_dynset_eval ;
 int nft_immediate_eval ;
 int nft_lookup_eval ;
 int nft_meta_get_eval ;
 int nft_payload_eval ;
 int nft_range_eval ;
 int nft_rt_get_eval ;
 int stub1 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo*) ;

__attribute__((used)) static void expr_call_ops_eval(const struct nft_expr *expr,
          struct nft_regs *regs,
          struct nft_pktinfo *pkt)
{
 expr->ops->eval(expr, regs, pkt);
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nft_xt_match_priv {int /*<<< orphan*/  info; } ;
struct nft_regs {int dummy; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*,int /*<<< orphan*/ ) ; 
 struct nft_xt_match_priv* FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC2(const struct nft_expr *expr,
				 struct nft_regs *regs,
				 const struct nft_pktinfo *pkt)
{
	struct nft_xt_match_priv *priv = FUNC1(expr);

	FUNC0(expr, regs, pkt, priv->info);
}
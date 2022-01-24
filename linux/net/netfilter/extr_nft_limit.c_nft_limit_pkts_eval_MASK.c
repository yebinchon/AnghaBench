#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_limit_pkts {int /*<<< orphan*/  cost; int /*<<< orphan*/  limit; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_BREAK ; 
 struct nft_limit_pkts* FUNC0 (struct nft_expr const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct nft_expr *expr,
				struct nft_regs *regs,
				const struct nft_pktinfo *pkt)
{
	struct nft_limit_pkts *priv = FUNC0(expr);

	if (FUNC1(&priv->limit, priv->cost))
		regs->verdict.code = NFT_BREAK;
}
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
struct nft_regs {int /*<<< orphan*/ * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_immediate_expr {size_t dreg; int /*<<< orphan*/  dlen; int /*<<< orphan*/  data; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nft_immediate_expr* FUNC1 (struct nft_expr const*) ; 

void FUNC2(const struct nft_expr *expr,
			struct nft_regs *regs,
			const struct nft_pktinfo *pkt)
{
	const struct nft_immediate_expr *priv = FUNC1(expr);

	FUNC0(&regs->data[priv->dreg], &priv->data, priv->dlen);
}
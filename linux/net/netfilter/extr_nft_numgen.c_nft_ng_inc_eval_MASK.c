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
struct nft_ng_inc {size_t dreg; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 struct nft_ng_inc* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_ng_inc*) ; 

__attribute__((used)) static void FUNC2(const struct nft_expr *expr,
			    struct nft_regs *regs,
			    const struct nft_pktinfo *pkt)
{
	struct nft_ng_inc *priv = FUNC0(expr);

	regs->data[priv->dreg] = FUNC1(priv);
}
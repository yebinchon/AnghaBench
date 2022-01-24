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
typedef  int /*<<< orphan*/  u32 ;
struct nft_regs {int /*<<< orphan*/ * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_jhash {size_t sreg; size_t dreg; int offset; int /*<<< orphan*/  modulus; int /*<<< orphan*/  seed; int /*<<< orphan*/  len; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_jhash* FUNC1 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct nft_expr *expr,
			   struct nft_regs *regs,
			   const struct nft_pktinfo *pkt)
{
	struct nft_jhash *priv = FUNC1(expr);
	const void *data = &regs->data[priv->sreg];
	u32 h;

	h = FUNC2(FUNC0(data, priv->len, priv->seed),
			     priv->modulus);

	regs->data[priv->dreg] = h + priv->offset;
}
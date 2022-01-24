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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {int* data; TYPE_1__ verdict; } ;
struct nft_expr {int dummy; } ;
struct nft_cmp_fast_expr {size_t sreg; int data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_BREAK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct nft_cmp_fast_expr* FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC2(const struct nft_expr *expr,
			      struct nft_regs *regs)
{
	const struct nft_cmp_fast_expr *priv = FUNC1(expr);
	u32 mask = FUNC0(priv->len);

	if ((regs->data[priv->sreg] & mask) == priv->data)
		return;
	regs->verdict.code = NFT_BREAK;
}
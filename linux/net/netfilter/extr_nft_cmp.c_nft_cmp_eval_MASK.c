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
struct nft_regs {TYPE_1__ verdict; int /*<<< orphan*/ * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_cmp_expr {size_t sreg; int op; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_BREAK ; 
#define  NFT_CMP_EQ 133 
#define  NFT_CMP_GT 132 
#define  NFT_CMP_GTE 131 
#define  NFT_CMP_LT 130 
#define  NFT_CMP_LTE 129 
#define  NFT_CMP_NEQ 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nft_cmp_expr* FUNC1 (struct nft_expr const*) ; 

void FUNC2(const struct nft_expr *expr,
		  struct nft_regs *regs,
		  const struct nft_pktinfo *pkt)
{
	const struct nft_cmp_expr *priv = FUNC1(expr);
	int d;

	d = FUNC0(&regs->data[priv->sreg], &priv->data, priv->len);
	switch (priv->op) {
	case NFT_CMP_EQ:
		if (d != 0)
			goto mismatch;
		break;
	case NFT_CMP_NEQ:
		if (d == 0)
			goto mismatch;
		break;
	case NFT_CMP_LT:
		if (d == 0)
			goto mismatch;
		/* fall through */
	case NFT_CMP_LTE:
		if (d > 0)
			goto mismatch;
		break;
	case NFT_CMP_GT:
		if (d == 0)
			goto mismatch;
		/* fall through */
	case NFT_CMP_GTE:
		if (d < 0)
			goto mismatch;
		break;
	}
	return;

mismatch:
	regs->verdict.code = NFT_BREAK;
}
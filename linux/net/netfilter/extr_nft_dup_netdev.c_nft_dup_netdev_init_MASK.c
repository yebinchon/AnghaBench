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
struct nlattr {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_dup_netdev {int /*<<< orphan*/  sreg_dev; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NFTA_DUP_SREG_DEV ; 
 struct nft_dup_netdev* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(const struct nft_ctx *ctx,
			       const struct nft_expr *expr,
			       const struct nlattr * const tb[])
{
	struct nft_dup_netdev *priv = FUNC0(expr);

	if (tb[NFTA_DUP_SREG_DEV] == NULL)
		return -EINVAL;

	priv->sreg_dev = FUNC1(tb[NFTA_DUP_SREG_DEV]);
	return FUNC2(priv->sreg_dev, sizeof(int));
}
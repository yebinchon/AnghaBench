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
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rate; int /*<<< orphan*/  nsecs; } ;
struct nft_limit_pkts {TYPE_1__ limit; int /*<<< orphan*/  cost; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_limit_pkts* FUNC1 (struct nft_expr const*) ; 
 int FUNC2 (TYPE_1__*,struct nlattr const* const*,int) ; 

__attribute__((used)) static int FUNC3(const struct nft_ctx *ctx,
			       const struct nft_expr *expr,
			       const struct nlattr * const tb[])
{
	struct nft_limit_pkts *priv = FUNC1(expr);
	int err;

	err = FUNC2(&priv->limit, tb, true);
	if (err < 0)
		return err;

	priv->cost = FUNC0(priv->limit.nsecs, priv->limit.rate);
	return 0;
}
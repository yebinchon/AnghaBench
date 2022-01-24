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
struct xt_match {unsigned int hooks; int /*<<< orphan*/  table; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int /*<<< orphan*/  chain; } ;
struct nf_hook_ops {int hooknum; } ;
struct nft_base_chain {struct nf_hook_ops ops; } ;
struct TYPE_2__ {struct xt_match* data; } ;

/* Variables and functions */
 int EINVAL ; 
 struct nft_base_chain* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nft_ctx const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct nft_ctx *ctx,
			      const struct nft_expr *expr,
			      const struct nft_data **data)
{
	struct xt_match *match = expr->ops->data;
	unsigned int hook_mask = 0;
	int ret;

	if (FUNC2(ctx->chain)) {
		const struct nft_base_chain *basechain =
						FUNC0(ctx->chain);
		const struct nf_hook_ops *ops = &basechain->ops;

		hook_mask = 1 << ops->hooknum;
		if (match->hooks && !(hook_mask & match->hooks))
			return -EINVAL;

		ret = FUNC1(ctx, match->table);
		if (ret < 0)
			return ret;
	}
	return 0;
}
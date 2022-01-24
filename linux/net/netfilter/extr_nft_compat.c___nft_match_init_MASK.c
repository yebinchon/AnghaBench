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
typedef  union nft_entry {int dummy; } nft_entry ;
typedef  int /*<<< orphan*/  u16 ;
struct xt_mtchk_param {int dummy; } ;
struct xt_match {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_ctx {scalar_t__* nla; } ;
struct TYPE_2__ {struct xt_match* data; } ;

/* Variables and functions */
 size_t NFTA_MATCH_INFO ; 
 size_t NFTA_RULE_COMPAT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xt_match*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_mtchk_param*,struct nft_ctx const*,struct xt_match*,void*,union nft_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr const* const) ; 
 int FUNC6 (struct xt_mtchk_param*,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(const struct nft_ctx *ctx, const struct nft_expr *expr,
		 const struct nlattr * const tb[],
		 void *info)
{
	struct xt_match *match = expr->ops->data;
	struct xt_mtchk_param par;
	size_t size = FUNC0(FUNC5(tb[NFTA_MATCH_INFO]));
	u16 proto = 0;
	bool inv = false;
	union nft_entry e = {};
	int ret;

	FUNC1(match, FUNC4(tb[NFTA_MATCH_INFO]), info);

	if (ctx->nla[NFTA_RULE_COMPAT]) {
		ret = FUNC3(ctx->nla[NFTA_RULE_COMPAT], &proto, &inv);
		if (ret < 0)
			return ret;
	}

	FUNC2(&par, ctx, match, info, &e, proto, inv);

	return FUNC6(&par, size, proto, inv);
}
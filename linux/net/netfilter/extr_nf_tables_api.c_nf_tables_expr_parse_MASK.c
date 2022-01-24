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
typedef  struct nlattr const nlattr ;
struct nft_expr_type {int maxattr; int /*<<< orphan*/  owner; struct nft_expr_type* ops; struct nft_expr_type* (* select_ops ) (struct nft_ctx const*,struct nlattr const* const*) ;int /*<<< orphan*/  policy; } ;
struct nft_expr_ops {int maxattr; int /*<<< orphan*/  owner; struct nft_expr_ops* ops; struct nft_expr_type* (* select_ops ) (struct nft_ctx const*,struct nlattr const* const*) ;int /*<<< orphan*/  policy; } ;
struct nft_expr_info {struct nft_expr_type const* ops; struct nlattr const** tb; } ;
struct nft_ctx {int /*<<< orphan*/  family; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct nft_expr_type const*) ; 
 size_t NFTA_EXPR_DATA ; 
 int NFTA_EXPR_MAX ; 
 size_t NFTA_EXPR_NAME ; 
 int FUNC1 (struct nft_expr_type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nft_expr_policy ; 
 struct nft_expr_type* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr const*) ; 
 int FUNC6 (struct nlattr const**,int,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nft_expr_type* FUNC7 (struct nft_ctx const*,struct nlattr const* const*) ; 

__attribute__((used)) static int FUNC8(const struct nft_ctx *ctx,
				const struct nlattr *nla,
				struct nft_expr_info *info)
{
	const struct nft_expr_type *type;
	const struct nft_expr_ops *ops;
	struct nlattr *tb[NFTA_EXPR_MAX + 1];
	int err;

	err = FUNC6(tb, NFTA_EXPR_MAX, nla,
					  nft_expr_policy, NULL);
	if (err < 0)
		return err;

	type = FUNC4(ctx->net, ctx->family, tb[NFTA_EXPR_NAME]);
	if (FUNC0(type))
		return FUNC1(type);

	if (tb[NFTA_EXPR_DATA]) {
		err = FUNC6(info->tb, type->maxattr,
						  tb[NFTA_EXPR_DATA],
						  type->policy, NULL);
		if (err < 0)
			goto err1;
	} else
		FUNC2(info->tb, 0, sizeof(info->tb[0]) * (type->maxattr + 1));

	if (type->select_ops != NULL) {
		ops = type->select_ops(ctx,
				       (const struct nlattr * const *)info->tb);
		if (FUNC0(ops)) {
			err = FUNC1(ops);
#ifdef CONFIG_MODULES
			if (err == -EAGAIN)
				nft_expr_type_request_module(ctx->net,
							     ctx->family,
							     tb[NFTA_EXPR_NAME]);
#endif
			goto err1;
		}
	} else
		ops = type->ops;

	info->ops = ops;
	return 0;

err1:
	FUNC3(type->owner);
	return err;
}
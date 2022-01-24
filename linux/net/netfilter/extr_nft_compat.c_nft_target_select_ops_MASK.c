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
typedef  scalar_t__ u32 ;
struct xt_target {scalar_t__ targetsize; int /*<<< orphan*/  me; int /*<<< orphan*/  target; } ;
struct nlattr {int dummy; } ;
typedef  struct nft_expr_ops {int /*<<< orphan*/  eval; struct xt_target* data; int /*<<< orphan*/  validate; int /*<<< orphan*/  dump; int /*<<< orphan*/  destroy; int /*<<< orphan*/  init; int /*<<< orphan*/  size; int /*<<< orphan*/ * type; } const nft_expr_ops ;
struct nft_ctx {scalar_t__ family; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct nft_expr_ops const* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct xt_target*) ; 
 scalar_t__ NFPROTO_BRIDGE ; 
 size_t NFTA_TARGET_INFO ; 
 size_t NFTA_TARGET_NAME ; 
 size_t NFTA_TARGET_REV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 char* XT_ERROR_TARGET ; 
 char* XT_STANDARD_TARGET ; 
 struct nft_expr_ops const* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nft_target_destroy ; 
 int /*<<< orphan*/  nft_target_dump ; 
 int /*<<< orphan*/  nft_target_eval_bridge ; 
 int /*<<< orphan*/  nft_target_eval_xt ; 
 int /*<<< orphan*/  nft_target_init ; 
 int /*<<< orphan*/  nft_target_type ; 
 int /*<<< orphan*/  nft_target_validate ; 
 char* FUNC6 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr const* const) ; 
 scalar_t__ FUNC8 (struct nlattr const* const) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 struct xt_target* FUNC11 (scalar_t__,char*,scalar_t__) ; 

__attribute__((used)) static const struct nft_expr_ops *
FUNC12(const struct nft_ctx *ctx,
		      const struct nlattr * const tb[])
{
	struct nft_expr_ops *ops;
	struct xt_target *target;
	char *tg_name;
	u32 rev, family;
	int err;

	if (tb[NFTA_TARGET_NAME] == NULL ||
	    tb[NFTA_TARGET_REV] == NULL ||
	    tb[NFTA_TARGET_INFO] == NULL)
		return FUNC0(-EINVAL);

	tg_name = FUNC6(tb[NFTA_TARGET_NAME]);
	rev = FUNC9(FUNC7(tb[NFTA_TARGET_REV]));
	family = ctx->family;

	if (FUNC10(tg_name, XT_ERROR_TARGET) == 0 ||
	    FUNC10(tg_name, XT_STANDARD_TARGET) == 0 ||
	    FUNC10(tg_name, "standard") == 0)
		return FUNC0(-EINVAL);

	target = FUNC11(family, tg_name, rev);
	if (FUNC1(target))
		return FUNC0(-ENOENT);

	if (!target->target) {
		err = -EINVAL;
		goto err;
	}

	if (target->targetsize > FUNC8(tb[NFTA_TARGET_INFO])) {
		err = -EINVAL;
		goto err;
	}

	ops = FUNC4(sizeof(struct nft_expr_ops), GFP_KERNEL);
	if (!ops) {
		err = -ENOMEM;
		goto err;
	}

	ops->type = &nft_target_type;
	ops->size = FUNC2(FUNC3(target->targetsize));
	ops->init = nft_target_init;
	ops->destroy = nft_target_destroy;
	ops->dump = nft_target_dump;
	ops->validate = nft_target_validate;
	ops->data = target;

	if (family == NFPROTO_BRIDGE)
		ops->eval = nft_target_eval_bridge;
	else
		ops->eval = nft_target_eval_xt;

	return ops;
err:
	FUNC5(target->me);
	return FUNC0(err);
}
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
struct xt_match {int /*<<< orphan*/  me; int /*<<< orphan*/  matchsize; } ;
struct nlattr {int dummy; } ;
struct nft_xt_match_priv {int dummy; } ;
typedef  struct nft_expr_ops {unsigned int size; int /*<<< orphan*/  dump; int /*<<< orphan*/  destroy; int /*<<< orphan*/  init; int /*<<< orphan*/  eval; struct xt_match* data; int /*<<< orphan*/  validate; int /*<<< orphan*/ * type; } const nft_expr_ops ;
struct nft_ctx {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct nft_expr_ops const* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct xt_match*) ; 
 size_t NFTA_MATCH_INFO ; 
 size_t NFTA_MATCH_NAME ; 
 size_t NFTA_MATCH_REV ; 
 unsigned int FUNC2 (int) ; 
 unsigned int NFT_MATCH_LARGE_THRESH ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct nft_expr_ops const* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nft_match_destroy ; 
 int /*<<< orphan*/  nft_match_dump ; 
 int /*<<< orphan*/  nft_match_eval ; 
 int /*<<< orphan*/  nft_match_init ; 
 int /*<<< orphan*/  nft_match_large_destroy ; 
 int /*<<< orphan*/  nft_match_large_dump ; 
 int /*<<< orphan*/  nft_match_large_eval ; 
 int /*<<< orphan*/  nft_match_large_init ; 
 int /*<<< orphan*/  nft_match_type ; 
 int /*<<< orphan*/  nft_match_validate ; 
 char* FUNC6 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct xt_match* FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct nft_expr_ops *
FUNC11(const struct nft_ctx *ctx,
		     const struct nlattr * const tb[])
{
	struct nft_expr_ops *ops;
	struct xt_match *match;
	unsigned int matchsize;
	char *mt_name;
	u32 rev, family;
	int err;

	if (tb[NFTA_MATCH_NAME] == NULL ||
	    tb[NFTA_MATCH_REV] == NULL ||
	    tb[NFTA_MATCH_INFO] == NULL)
		return FUNC0(-EINVAL);

	mt_name = FUNC6(tb[NFTA_MATCH_NAME]);
	rev = FUNC9(FUNC7(tb[NFTA_MATCH_REV]));
	family = ctx->family;

	match = FUNC10(family, mt_name, rev);
	if (FUNC1(match))
		return FUNC0(-ENOENT);

	if (match->matchsize > FUNC8(tb[NFTA_MATCH_INFO])) {
		err = -EINVAL;
		goto err;
	}

	ops = FUNC4(sizeof(struct nft_expr_ops), GFP_KERNEL);
	if (!ops) {
		err = -ENOMEM;
		goto err;
	}

	ops->type = &nft_match_type;
	ops->eval = nft_match_eval;
	ops->init = nft_match_init;
	ops->destroy = nft_match_destroy;
	ops->dump = nft_match_dump;
	ops->validate = nft_match_validate;
	ops->data = match;

	matchsize = FUNC2(FUNC3(match->matchsize));
	if (matchsize > NFT_MATCH_LARGE_THRESH) {
		matchsize = FUNC2(sizeof(struct nft_xt_match_priv));

		ops->eval = nft_match_large_eval;
		ops->init = nft_match_large_init;
		ops->destroy = nft_match_large_destroy;
		ops->dump = nft_match_large_dump;
	}

	ops->size = matchsize;

	return ops;
err:
	FUNC5(match->me);
	return FUNC0(err);
}
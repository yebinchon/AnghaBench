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
struct nft_set_ext {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_rhash_elem {struct nft_set_ext ext; int /*<<< orphan*/  node; } ;
struct nft_rhash_cmp_arg {int /*<<< orphan*/  const* key; struct nft_set* set; int /*<<< orphan*/  genmask; } ;
struct nft_rhash {int /*<<< orphan*/  ht; } ;
struct nft_regs {int dummy; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nft_rhash_elem*) ; 
 int /*<<< orphan*/  NFT_GENMASK_ANY ; 
 int /*<<< orphan*/  nft_rhash_params ; 
 int /*<<< orphan*/  FUNC1 (struct nft_set*,struct nft_rhash_elem*,int) ; 
 struct nft_rhash* FUNC2 (struct nft_set*) ; 
 struct nft_rhash_elem* FUNC3 (int /*<<< orphan*/ *,struct nft_rhash_cmp_arg*,int /*<<< orphan*/ ) ; 
 struct nft_rhash_elem* FUNC4 (int /*<<< orphan*/ *,struct nft_rhash_cmp_arg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct nft_set *set, const u32 *key,
			     void *(*new)(struct nft_set *,
					  const struct nft_expr *,
					  struct nft_regs *regs),
			     const struct nft_expr *expr,
			     struct nft_regs *regs,
			     const struct nft_set_ext **ext)
{
	struct nft_rhash *priv = FUNC2(set);
	struct nft_rhash_elem *he, *prev;
	struct nft_rhash_cmp_arg arg = {
		.genmask = NFT_GENMASK_ANY,
		.set	 = set,
		.key	 = key,
	};

	he = FUNC3(&priv->ht, &arg, nft_rhash_params);
	if (he != NULL)
		goto out;

	he = new(set, expr, regs);
	if (he == NULL)
		goto err1;

	prev = FUNC4(&priv->ht, &arg, &he->node,
						nft_rhash_params);
	if (FUNC0(prev))
		goto err2;

	/* Another cpu may race to insert the element with the same key */
	if (prev) {
		FUNC1(set, he, true);
		he = prev;
	}

out:
	*ext = &he->ext;
	return true;

err2:
	FUNC1(set, he, true);
err1:
	return false;
}
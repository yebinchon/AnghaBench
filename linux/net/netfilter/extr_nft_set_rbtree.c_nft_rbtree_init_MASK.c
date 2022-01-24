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
struct nft_set_desc {int dummy; } ;
struct nft_set {int flags; } ;
struct nft_rbtree {int /*<<< orphan*/  gc_work; int /*<<< orphan*/  root; int /*<<< orphan*/  count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NFT_SET_TIMEOUT ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  nft_rbtree_gc ; 
 int /*<<< orphan*/  FUNC1 (struct nft_set const*) ; 
 struct nft_rbtree* FUNC2 (struct nft_set const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC6(const struct nft_set *set,
			   const struct nft_set_desc *desc,
			   const struct nlattr * const nla[])
{
	struct nft_rbtree *priv = FUNC2(set);

	FUNC4(&priv->lock);
	FUNC5(&priv->count);
	priv->root = RB_ROOT;

	FUNC0(&priv->gc_work, nft_rbtree_gc);
	if (set->flags & NFT_SET_TIMEOUT)
		FUNC3(system_power_efficient_wq, &priv->gc_work,
				   FUNC1(set));

	return 0;
}
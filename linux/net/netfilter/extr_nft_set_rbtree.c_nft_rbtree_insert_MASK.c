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
struct nft_set_ext {int dummy; } ;
struct nft_set_elem {struct nft_rbtree_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_rbtree_elem {int dummy; } ;
struct nft_rbtree {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net const*,struct nft_set const*,struct nft_rbtree_elem*,struct nft_set_ext**) ; 
 struct nft_rbtree* FUNC1 (struct nft_set const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const struct net *net, const struct nft_set *set,
			     const struct nft_set_elem *elem,
			     struct nft_set_ext **ext)
{
	struct nft_rbtree *priv = FUNC1(set);
	struct nft_rbtree_elem *rbe = elem->priv;
	int err;

	FUNC2(&priv->lock);
	FUNC3(&priv->count);
	err = FUNC0(net, set, rbe, ext);
	FUNC4(&priv->count);
	FUNC5(&priv->lock);

	return err;
}
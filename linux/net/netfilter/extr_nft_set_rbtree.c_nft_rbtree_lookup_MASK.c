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
struct nft_rbtree {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net const*,struct nft_set const*,int /*<<< orphan*/  const*,struct nft_set_ext const**,unsigned int) ; 
 struct nft_rbtree* FUNC1 (struct nft_set const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(const struct net *net, const struct nft_set *set,
			      const u32 *key, const struct nft_set_ext **ext)
{
	struct nft_rbtree *priv = FUNC1(set);
	unsigned int seq = FUNC3(&priv->count);
	bool ret;

	ret = FUNC0(net, set, key, ext, seq);
	if (ret || !FUNC4(&priv->count, seq))
		return ret;

	FUNC2(&priv->lock);
	seq = FUNC3(&priv->count);
	ret = FUNC0(net, set, key, ext, seq);
	FUNC5(&priv->lock);

	return ret;
}
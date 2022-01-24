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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
struct nft_set_elem {TYPE_1__ key; } ;
struct nft_set {int dummy; } ;
typedef  void nft_rbtree_elem ;
struct nft_rbtree {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net const*,struct nft_set const*,int /*<<< orphan*/  const*,void**,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net const*) ; 
 struct nft_rbtree* FUNC3 (struct nft_set const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC8(const struct net *net, const struct nft_set *set,
			    const struct nft_set_elem *elem, unsigned int flags)
{
	struct nft_rbtree *priv = FUNC3(set);
	unsigned int seq = FUNC5(&priv->count);
	struct nft_rbtree_elem *rbe = FUNC0(-ENOENT);
	const u32 *key = (const u32 *)&elem->key.val;
	u8 genmask = FUNC2(net);
	bool ret;

	ret = FUNC1(net, set, key, &rbe, seq, flags, genmask);
	if (ret || !FUNC6(&priv->count, seq))
		return rbe;

	FUNC4(&priv->lock);
	seq = FUNC5(&priv->count);
	ret = FUNC1(net, set, key, &rbe, seq, flags, genmask);
	if (!ret)
		rbe = FUNC0(-ENOENT);
	FUNC7(&priv->lock);

	return rbe;
}
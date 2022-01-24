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
struct kmem_cache_node {int /*<<< orphan*/  list_lock; struct alien_cache** alien; struct array_cache* shared; } ;
struct kmem_cache {int shared; int batchcount; int /*<<< orphan*/  limit; } ;
struct array_cache {scalar_t__ avail; int /*<<< orphan*/  entry; } ;
struct alien_cache {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct alien_cache** FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct array_cache* FUNC2 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alien_cache**) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 struct kmem_cache_node* FUNC5 (struct kmem_cache*,int) ; 
 int FUNC6 (struct kmem_cache*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct array_cache*) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC8 (struct kmem_cache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ use_alien_caches ; 

__attribute__((used)) static int FUNC12(struct kmem_cache *cachep,
				int node, gfp_t gfp, bool force_change)
{
	int ret = -ENOMEM;
	struct kmem_cache_node *n;
	struct array_cache *old_shared = NULL;
	struct array_cache *new_shared = NULL;
	struct alien_cache **new_alien = NULL;
	FUNC0(list);

	if (use_alien_caches) {
		new_alien = FUNC1(node, cachep->limit, gfp);
		if (!new_alien)
			goto fail;
	}

	if (cachep->shared) {
		new_shared = FUNC2(node,
			cachep->shared * cachep->batchcount, 0xbaadf00d, gfp);
		if (!new_shared)
			goto fail;
	}

	ret = FUNC6(cachep, node, gfp);
	if (ret)
		goto fail;

	n = FUNC5(cachep, node);
	FUNC9(&n->list_lock);
	if (n->shared && force_change) {
		FUNC4(cachep, n->shared->entry,
				n->shared->avail, node, &list);
		n->shared->avail = 0;
	}

	if (!n->shared || force_change) {
		old_shared = n->shared;
		n->shared = new_shared;
		new_shared = NULL;
	}

	if (!n->alien) {
		n->alien = new_alien;
		new_alien = NULL;
	}

	FUNC10(&n->list_lock);
	FUNC8(cachep, &list);

	/*
	 * To protect lockless access to n->shared during irq disabled context.
	 * If n->shared isn't NULL in irq disabled context, accessing to it is
	 * guaranteed to be valid until irq is re-enabled, because it will be
	 * freed after synchronize_rcu().
	 */
	if (old_shared && force_change)
		FUNC11();

fail:
	FUNC7(old_shared);
	FUNC7(new_shared);
	FUNC3(new_alien);

	return ret;
}
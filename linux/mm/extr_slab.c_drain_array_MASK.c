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
struct kmem_cache_node {int /*<<< orphan*/  list_lock; } ;
struct kmem_cache {int dummy; } ;
struct array_cache {scalar_t__ touched; int /*<<< orphan*/  avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,struct array_cache*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct kmem_cache *cachep, struct kmem_cache_node *n,
			 struct array_cache *ac, int node)
{
	FUNC0(list);

	/* ac from n->shared can be freed if we don't hold the slab_mutex. */
	FUNC1();

	if (!ac || !ac->avail)
		return;

	if (ac->touched) {
		ac->touched = 0;
		return;
	}

	FUNC4(&n->list_lock);
	FUNC2(cachep, ac, node, false, &list);
	FUNC5(&n->list_lock);

	FUNC3(cachep, &list);
}
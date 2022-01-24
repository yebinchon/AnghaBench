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
struct page {int /*<<< orphan*/  rcu_head; void* freelist; } ;
struct kmem_cache {int flags; int /*<<< orphan*/  freelist_cache; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kmem_cache*) ; 
 int SLAB_TYPESAFE_BY_RCU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,struct page*) ; 
 int /*<<< orphan*/  kmem_rcu_free ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,struct page*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct kmem_cache *cachep, struct page *page)
{
	void *freelist;

	freelist = page->freelist;
	FUNC4(cachep, page);
	if (FUNC5(cachep->flags & SLAB_TYPESAFE_BY_RCU))
		FUNC1(&page->rcu_head, kmem_rcu_free);
	else
		FUNC3(cachep, page);

	/*
	 * From now on, we don't use freelist
	 * although actual page can be freed in rcu context
	 */
	if (FUNC0(cachep))
		FUNC2(cachep->freelist_cache, freelist);
}
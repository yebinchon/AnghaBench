#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/ * mapping; } ;
struct kmem_cache {int gfporder; } ;
struct TYPE_4__ {TYPE_1__* reclaim_state; } ;
struct TYPE_3__ {int reclaimed_slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int,struct kmem_cache*) ; 

__attribute__((used)) static void FUNC7(struct kmem_cache *cachep, struct page *page)
{
	int order = cachep->gfporder;

	FUNC0(!FUNC1(page));
	FUNC3(page);
	FUNC2(page);
	FUNC5(page);
	page->mapping = NULL;

	if (current->reclaim_state)
		current->reclaim_state->reclaimed_slab += 1 << order;
	FUNC6(page, order, cachep);
	FUNC4(page, order);
}
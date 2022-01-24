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
struct page {int dummy; } ;
struct kmem_cache {int /*<<< orphan*/  gfporder; int /*<<< orphan*/  allocflags; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kmem_cache*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct kmem_cache*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct page *FUNC8(struct kmem_cache *cachep, gfp_t flags,
								int nodeid)
{
	struct page *page;

	flags |= cachep->allocflags;

	page = FUNC2(nodeid, flags, cachep->gfporder);
	if (!page) {
		FUNC7(cachep, flags, nodeid);
		return NULL;
	}

	if (FUNC4(page, flags, cachep->gfporder, cachep)) {
		FUNC3(page, cachep->gfporder);
		return NULL;
	}

	FUNC1(page);
	/* Record if ALLOC_NO_WATERMARKS was set when allocating the slab */
	if (FUNC6() && FUNC5(page))
		FUNC0(page);

	return page;
}
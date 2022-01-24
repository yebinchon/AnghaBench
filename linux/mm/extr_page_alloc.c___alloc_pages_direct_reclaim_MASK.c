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
struct alloc_context {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned int,struct alloc_context const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,struct alloc_context const*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct alloc_context const*,int) ; 

__attribute__((used)) static inline struct page *
FUNC5(gfp_t gfp_mask, unsigned int order,
		unsigned int alloc_flags, const struct alloc_context *ac,
		unsigned long *did_some_progress)
{
	struct page *page = NULL;
	bool drained = false;

	*did_some_progress = FUNC0(gfp_mask, order, ac);
	if (FUNC3(!(*did_some_progress)))
		return NULL;

retry:
	page = FUNC2(gfp_mask, order, alloc_flags, ac);

	/*
	 * If an allocation failed after direct reclaim, it could be because
	 * pages are pinned on the per-cpu lists or in high alloc reserves.
	 * Shrink them them and try again
	 */
	if (!page && !drained) {
		FUNC4(ac, false);
		FUNC1(NULL);
		drained = true;
		goto retry;
	}

	return page;
}
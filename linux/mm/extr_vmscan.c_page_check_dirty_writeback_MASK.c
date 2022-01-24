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
struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* is_dirty_writeback ) (struct page*,int*,int*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct address_space* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int*,int*) ; 

__attribute__((used)) static void FUNC8(struct page *page,
				       bool *dirty, bool *writeback)
{
	struct address_space *mapping;

	/*
	 * Anonymous pages are not handled by flushers and must be written
	 * from reclaim context. Do not stall reclaim based on them
	 */
	if (!FUNC5(page) ||
	    (FUNC0(page) && !FUNC2(page))) {
		*dirty = false;
		*writeback = false;
		return;
	}

	/* By default assume that the page flags are accurate */
	*dirty = FUNC1(page);
	*writeback = FUNC3(page);

	/* Verify dirty/writeback state if the filesystem supports it */
	if (!FUNC4(page))
		return;

	mapping = FUNC6(page);
	if (mapping && mapping->a_ops->is_dirty_writeback)
		mapping->a_ops->is_dirty_writeback(page, dirty, writeback);
}
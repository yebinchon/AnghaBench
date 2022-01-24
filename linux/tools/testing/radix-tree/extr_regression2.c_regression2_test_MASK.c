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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PAGECACHE_TAG_TOWRITE ; 
 int RADIX_TREE_MAP_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt_tree ; 
 struct page* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void***,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	int i;
	struct page *p;
	int max_slots = RADIX_TREE_MAP_SIZE;
	unsigned long int start, end;
	struct page *pages[1];

	FUNC3(1, "running regression test 2 (should take milliseconds)\n");
	/* 0. */
	for (i = 0; i <= max_slots - 1; i++) {
		p = FUNC2();
		FUNC7(&mt_tree, i, p);
	}
	FUNC9(&mt_tree, max_slots - 1, PAGECACHE_TAG_DIRTY);

	/* 1. */
	start = 0;
	end = max_slots - 2;
	FUNC10(&mt_tree, start, end, 1,
				PAGECACHE_TAG_DIRTY, PAGECACHE_TAG_TOWRITE);

	/* 2. */
	p = FUNC2();
	FUNC7(&mt_tree, max_slots, p);

	/* 3. */
	FUNC8(&mt_tree, max_slots - 1, PAGECACHE_TAG_DIRTY);

	/* 4. */
	for (i = max_slots - 1; i >= 0; i--)
		FUNC1(FUNC4(&mt_tree, i));

	/* 5. */
	// NOTE: start should not be 0 because radix_tree_gang_lookup_tag_slot
	//       can return.
	start = 1;
	end = max_slots - 2;
	FUNC6(&mt_tree, (void ***)pages, start, end,
		PAGECACHE_TAG_TOWRITE);

	/* We remove all the remained nodes */
	FUNC1(FUNC4(&mt_tree, max_slots));

	FUNC0(!FUNC5(&mt_tree));

	FUNC3(1, "regression test 2, done\n");
}
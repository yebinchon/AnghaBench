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
struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_PRIO ; 
 scalar_t__ WB_SYNC_NONE ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct buffer_head* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,struct buffer_head*) ; 
 scalar_t__ FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int FUNC17 (struct writeback_control*) ; 

__attribute__((used)) static int FUNC18(struct page *page, struct writeback_control *wbc)
{
	struct buffer_head *bh, *head;
	int nr_underway = 0;
	int write_flags = REQ_META | REQ_PRIO | FUNC17(wbc);

	FUNC0(!FUNC1(page));
	FUNC0(!FUNC9(page));

	head = FUNC8(page);
	bh = head;

	do {
		if (!FUNC4(bh))
			continue;
		/*
		 * If it's a fully non-blocking write attempt and we cannot
		 * lock the buffer then redirty the page.  Note that this can
		 * potentially cause a busy-wait loop from flusher thread and kswapd
		 * activity, but those code paths have their own higher-level
		 * throttling.
		 */
		if (wbc->sync_mode != WB_SYNC_NONE) {
			FUNC6(bh);
		} else if (!FUNC14(bh)) {
			FUNC10(wbc, page);
			continue;
		}
		if (FUNC13(bh)) {
			FUNC7(bh);
		} else {
			FUNC15(bh);
		}
	} while ((bh = bh->b_this_page) != head);

	/*
	 * The page and its buffers are protected by PageWriteback(), so we can
	 * drop the bh refcounts early.
	 */
	FUNC0(FUNC2(page));
	FUNC11(page);

	do {
		struct buffer_head *next = bh->b_this_page;
		if (FUNC3(bh)) {
			FUNC12(REQ_OP_WRITE, write_flags, bh);
			nr_underway++;
		}
		bh = next;
	} while (bh != head);
	FUNC16(page);

	if (nr_underway == 0)
		FUNC5(page);

	return 0;
}
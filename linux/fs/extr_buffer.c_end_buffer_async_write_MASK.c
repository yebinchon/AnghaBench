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
struct buffer_head {int /*<<< orphan*/  b_state; struct buffer_head* b_this_page; struct page* b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Uptodate_Lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 struct buffer_head* FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

void FUNC16(struct buffer_head *bh, int uptodate)
{
	unsigned long flags;
	struct buffer_head *first;
	struct buffer_head *tmp;
	struct page *page;

	FUNC0(!FUNC4(bh));

	page = bh->b_page;
	if (uptodate) {
		FUNC14(bh);
	} else {
		FUNC5(bh, ", lost async page write");
		FUNC12(bh);
		FUNC8(bh);
		FUNC1(page);
	}

	first = FUNC13(page);
	FUNC11(flags);
	FUNC2(BH_Uptodate_Lock, &first->b_state);

	FUNC7(bh);
	FUNC15(bh);
	tmp = bh->b_this_page;
	while (tmp != bh) {
		if (FUNC4(tmp)) {
			FUNC0(!FUNC6(tmp));
			goto still_busy;
		}
		tmp = tmp->b_this_page;
	}
	FUNC3(BH_Uptodate_Lock, &first->b_state);
	FUNC10(flags);
	FUNC9(page);
	return;

still_busy:
	FUNC3(BH_Uptodate_Lock, &first->b_state);
	FUNC10(flags);
	return;
}
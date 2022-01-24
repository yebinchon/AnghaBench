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
struct journal_head {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
typedef  int /*<<< orphan*/  journal_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 struct journal_head* FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct buffer_head* FUNC8 (struct page*) ; 
 int FUNC9 (struct page*) ; 

int FUNC10(journal_t *journal,
				struct page *page, gfp_t gfp_mask)
{
	struct buffer_head *head;
	struct buffer_head *bh;
	int ret = 0;

	FUNC0(FUNC1(page));

	head = FUNC8(page);
	bh = head;
	do {
		struct journal_head *jh;

		/*
		 * We take our own ref against the journal_head here to avoid
		 * having to add tons of locking around each instance of
		 * jbd2_journal_put_journal_head().
		 */
		jh = FUNC4(bh);
		if (!jh)
			continue;

		FUNC6(bh);
		FUNC2(journal, bh);
		FUNC5(jh);
		FUNC7(bh);
		if (FUNC3(bh))
			goto busy;
	} while ((bh = bh->b_this_page) != head);

	ret = FUNC9(page);

busy:
	return ret;
}
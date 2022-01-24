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
struct journal_head {int /*<<< orphan*/  b_triggers; int /*<<< orphan*/  b_frozen_triggers; int /*<<< orphan*/  b_frozen_data; } ;
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; struct page* b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct journal_head*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*,char*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC3 (struct journal_head*) ; 
 char* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct journal_head *jh)
{
	struct page *page;
	int offset;
	char *source;
	struct buffer_head *bh = FUNC3(jh);

	FUNC0(jh, FUNC1(bh), "Possible IO failure.\n");
	page = bh->b_page;
	offset = FUNC7(bh->b_data);
	source = FUNC4(page);
	/* Fire data frozen trigger just before we copy the data */
	FUNC2(jh, source + offset, jh->b_triggers);
	FUNC6(jh->b_frozen_data, source + offset, bh->b_size);
	FUNC5(source);

	/*
	 * Now that the frozen data is saved off, we need to store any matching
	 * triggers.
	 */
	jh->b_frozen_triggers = jh->b_triggers;
}
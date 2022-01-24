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
struct buffer_head {struct page* b_page; } ;
struct address_space {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_DIRTY_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct address_space* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

void FUNC12(struct buffer_head *bh)
{
	FUNC1(!FUNC5(bh));

	FUNC10(bh);

	/*
	 * Very *carefully* optimize the it-is-already-dirty case.
	 *
	 * Don't let the final "is it dirty" escape to before we
	 * perhaps modified the buffer.
	 */
	if (FUNC4(bh)) {
		FUNC8();
		if (FUNC4(bh))
			return;
	}

	if (!FUNC9(bh)) {
		struct page *page = bh->b_page;
		struct address_space *mapping = NULL;

		FUNC6(page);
		if (!FUNC0(page)) {
			mapping = FUNC7(page);
			if (mapping)
				FUNC3(page, mapping, 0);
		}
		FUNC11(page);
		if (mapping)
			FUNC2(mapping->host, I_DIRTY_PAGES);
	}
}
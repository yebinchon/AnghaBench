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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct page* FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

int FUNC9(struct page *page)
{
	struct page *head = FUNC3(page);

	if (!FUNC1(head) && FUNC2(head)) {
		/*
		 * Non anonymous thp exists only in allocation/free time. We
		 * can't handle such a case correctly, so let's give it up.
		 * This should be better than triggering BUG_ON when kernel
		 * tries to touch the "partially handled" page.
		 */
		if (!FUNC0(head)) {
			FUNC6("Memory failure: %#lx: non anonymous thp\n",
				FUNC5(page));
			return 0;
		}
	}

	if (FUNC4(head)) {
		if (head == FUNC3(page))
			return 1;

		FUNC7("Memory failure: %#lx cannot catch tail\n",
			FUNC5(page));
		FUNC8(head);
	}

	return 0;
}
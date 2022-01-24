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
struct lruvec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ LRU_INACTIVE_ANON ; 
 int /*<<< orphan*/  LRU_INACTIVE_FILE ; 
 int /*<<< orphan*/  PGLAZYFREE ; 
 int FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct lruvec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,struct lruvec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct lruvec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct page *page, struct lruvec *lruvec,
			    void *arg)
{
	if (FUNC5(page) && FUNC4(page) && FUNC6(page) &&
	    !FUNC7(page) && !FUNC8(page)) {
		bool active = FUNC3(page);

		FUNC12(page, lruvec,
				       LRU_INACTIVE_ANON + active);
		FUNC0(page);
		FUNC1(page);
		/*
		 * lazyfree pages are clean anonymous pages. They have
		 * SwapBacked flag cleared to distinguish normal anonymous
		 * pages
		 */
		FUNC2(page);
		FUNC10(page, lruvec, LRU_INACTIVE_FILE);

		FUNC9(PGLAZYFREE, FUNC13(page));
		FUNC11(page, PGLAZYFREE);
		FUNC14(lruvec, 1, 0);
	}
}
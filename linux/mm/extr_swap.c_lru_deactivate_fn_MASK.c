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
 scalar_t__ LRU_ACTIVE ; 
 int /*<<< orphan*/  PGDEACTIVATE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct lruvec*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct lruvec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (struct page*) ; 
 int FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct lruvec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct page *page, struct lruvec *lruvec,
			    void *arg)
{
	if (FUNC3(page) && FUNC2(page) && !FUNC4(page)) {
		int file = FUNC9(page);
		int lru = FUNC10(page);

		FUNC7(page, lruvec, lru + LRU_ACTIVE);
		FUNC0(page);
		FUNC1(page);
		FUNC6(page, lruvec, lru);

		FUNC5(PGDEACTIVATE, FUNC8(page));
		FUNC11(lruvec, file, 0);
	}
}
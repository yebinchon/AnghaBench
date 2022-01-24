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
 scalar_t__ LRU_ACTIVE ; 
 int /*<<< orphan*/  PGACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct lruvec*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct lruvec*,int) ; 
 int FUNC7 (struct page*) ; 
 int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct lruvec*,int,int) ; 

__attribute__((used)) static void FUNC11(struct page *page, struct lruvec *lruvec,
			    void *arg)
{
	if (FUNC1(page) && !FUNC0(page) && !FUNC2(page)) {
		int file = FUNC7(page);
		int lru = FUNC8(page);

		FUNC6(page, lruvec, lru);
		FUNC3(page);
		lru += LRU_ACTIVE;
		FUNC5(page, lruvec, lru);
		FUNC9(page);

		FUNC4(PGACTIVATE);
		FUNC10(lruvec, file, 1);
	}
}
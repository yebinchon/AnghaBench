#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct lruvec {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lru_lock; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EBUSY ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct lruvec*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct lruvec* FUNC7 (struct page*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (struct page*) ; 
 TYPE_1__* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct page *page)
{
	int ret = -EBUSY;

	FUNC3(!FUNC8(page), page);
	FUNC4(FUNC2(page), "trying to isolate tail page");

	if (FUNC1(page)) {
		pg_data_t *pgdat = FUNC10(page);
		struct lruvec *lruvec;

		FUNC11(&pgdat->lru_lock);
		lruvec = FUNC7(page, pgdat);
		if (FUNC1(page)) {
			int lru = FUNC9(page);
			FUNC6(page);
			FUNC0(page);
			FUNC5(page, lruvec, lru);
			ret = 0;
		}
		FUNC12(&pgdat->lru_lock);
	}
	return ret;
}
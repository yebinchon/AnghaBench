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
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct lruvec*,int /*<<< orphan*/ ) ; 
 struct lruvec* FUNC3 (struct page*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 TYPE_1__* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct page *page, int *isolated)
{
	pg_data_t *pgdat = FUNC5(page);

	FUNC6(&pgdat->lru_lock);
	if (FUNC1(page)) {
		struct lruvec *lruvec;

		lruvec = FUNC3(page, pgdat);
		FUNC0(page);
		FUNC2(page, lruvec, FUNC4(page));
		*isolated = 1;
	} else
		*isolated = 0;
}
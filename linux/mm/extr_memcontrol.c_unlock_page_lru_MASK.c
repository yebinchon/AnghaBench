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
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct lruvec*,int /*<<< orphan*/ ) ; 
 struct lruvec* FUNC4 (struct page*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 TYPE_1__* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct page *page, int isolated)
{
	pg_data_t *pgdat = FUNC6(page);

	if (isolated) {
		struct lruvec *lruvec;

		lruvec = FUNC4(page, pgdat);
		FUNC2(FUNC0(page), page);
		FUNC1(page);
		FUNC3(page, lruvec, FUNC5(page));
	}
	FUNC7(&pgdat->lru_lock);
}
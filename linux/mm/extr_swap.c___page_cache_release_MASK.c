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
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct lruvec*,int /*<<< orphan*/ ) ; 
 struct lruvec* FUNC5 (struct page*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 TYPE_1__* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct page *page)
{
	if (FUNC0(page)) {
		pg_data_t *pgdat = FUNC7(page);
		struct lruvec *lruvec;
		unsigned long flags;

		FUNC8(&pgdat->lru_lock, flags);
		lruvec = FUNC5(page, pgdat);
		FUNC1(!FUNC0(page), page);
		FUNC2(page);
		FUNC4(page, lruvec, FUNC6(page));
		FUNC9(&pgdat->lru_lock, flags);
	}
	FUNC3(page);
}
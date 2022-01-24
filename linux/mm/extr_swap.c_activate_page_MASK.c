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
struct TYPE_4__ {int /*<<< orphan*/  lru_lock; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct page* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct page *page)
{
	pg_data_t *pgdat = FUNC3(page);

	page = FUNC1(page);
	FUNC4(&pgdat->lru_lock);
	FUNC0(page, FUNC2(page, pgdat), NULL);
	FUNC5(&pgdat->lru_lock);
}
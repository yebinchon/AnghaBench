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
struct page_pool {int /*<<< orphan*/  ring; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct page*) ; 

__attribute__((used)) static bool FUNC3(struct page_pool *pool,
				   struct page *page)
{
	int ret;
	/* BH protection not needed if current is serving softirq */
	if (FUNC0())
		ret = FUNC1(&pool->ring, page);
	else
		ret = FUNC2(&pool->ring, page);

	return (ret == 0) ? true : false;
}
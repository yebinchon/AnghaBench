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
struct rmap_walk_control {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct rmap_walk_control*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct rmap_walk_control*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct rmap_walk_control*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct page *page, struct rmap_walk_control *rwc)
{
	if (FUNC5(FUNC1(page)))
		FUNC4(page, rwc);
	else if (FUNC0(page))
		FUNC2(page, rwc, false);
	else
		FUNC3(page, rwc, false);
}
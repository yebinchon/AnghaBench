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
struct llist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct llist_head*) ; 
 int /*<<< orphan*/  lazy_list ; 
 int /*<<< orphan*/  FUNC2 (struct llist_head*) ; 
 int /*<<< orphan*/  raised_list ; 
 struct llist_head* FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	struct llist_head *raised = FUNC3(&raised_list);

	if (!FUNC2(raised) && !FUNC0())
		FUNC1(raised);
	FUNC1(FUNC3(&lazy_list));
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lazy_list ; 
 scalar_t__ FUNC3 (struct llist_head*) ; 
 int /*<<< orphan*/  raised_list ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct llist_head* FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(void)
{
	struct llist_head *raised, *lazy;

	raised = FUNC5(&raised_list);
	lazy = FUNC5(&lazy_list);

	if (FUNC3(raised) || FUNC1())
		if (FUNC3(lazy))
			return false;

	/* All work should have been flushed before going offline */
	FUNC0(FUNC2(FUNC4()));

	return true;
}
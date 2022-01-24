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
struct psample_group {scalar_t__ refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct psample_group*) ; 
 int /*<<< orphan*/  psample_groups_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct psample_group *group)
{
	FUNC1(&psample_groups_lock);

	if (--group->refcount == 0)
		FUNC0(group);

	FUNC2(&psample_groups_lock);
}
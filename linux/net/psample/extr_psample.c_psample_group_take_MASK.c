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
struct psample_group {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  psample_groups_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct psample_group *group)
{
	FUNC0(&psample_groups_lock);
	group->refcount++;
	FUNC1(&psample_groups_lock);
}
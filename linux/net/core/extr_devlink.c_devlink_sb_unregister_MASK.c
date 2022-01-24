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
struct devlink_sb {int /*<<< orphan*/  list; } ;
struct devlink {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct devlink_sb* FUNC1 (struct devlink*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink_sb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct devlink *devlink, unsigned int sb_index)
{
	struct devlink_sb *devlink_sb;

	FUNC4(&devlink->lock);
	devlink_sb = FUNC1(devlink, sb_index);
	FUNC0(!devlink_sb);
	FUNC3(&devlink_sb->list);
	FUNC5(&devlink->lock);
	FUNC2(devlink_sb);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kobject {TYPE_1__* sd; } ;
struct TYPE_3__ {void* ns; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_symlink_target_lock ; 

void FUNC4(struct kobject *kobj, struct kobject *targ,
			const char *name)
{
	const void *ns = NULL;

	/*
	 * We don't own @target and it may be removed at any time.
	 * Synchronize using sysfs_symlink_target_lock.  See
	 * sysfs_remove_dir() for details.
	 */
	FUNC2(&sysfs_symlink_target_lock);
	if (targ->sd && FUNC0(kobj->sd))
		ns = targ->sd->ns;
	FUNC3(&sysfs_symlink_target_lock);
	FUNC1(kobj->sd, name, ns);
}
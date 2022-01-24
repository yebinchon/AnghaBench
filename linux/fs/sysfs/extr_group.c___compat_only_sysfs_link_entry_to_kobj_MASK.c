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
struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int FUNC2 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC3 (struct kernfs_node*,char const*,struct kernfs_node*) ; 
 struct kernfs_node* FUNC4 (struct kernfs_node*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_symlink_target_lock ; 
 int /*<<< orphan*/  FUNC9 (struct kernfs_node*,char const*) ; 

int FUNC10(struct kobject *kobj,
				      struct kobject *target_kobj,
				      const char *target_name)
{
	struct kernfs_node *target;
	struct kernfs_node *entry;
	struct kernfs_node *link;

	/*
	 * We don't own @target_kobj and it may be removed at any time.
	 * Synchronize using sysfs_symlink_target_lock. See sysfs_remove_dir()
	 * for details.
	 */
	FUNC7(&sysfs_symlink_target_lock);
	target = target_kobj->sd;
	if (target)
		FUNC5(target);
	FUNC8(&sysfs_symlink_target_lock);
	if (!target)
		return -ENOENT;

	entry = FUNC4(target_kobj->sd, target_name);
	if (!entry) {
		FUNC6(target);
		return -ENOENT;
	}

	link = FUNC3(kobj->sd, target_name, entry);
	if (FUNC0(link) && FUNC1(link) == -EEXIST)
		FUNC9(kobj->sd, target_name);

	FUNC6(entry);
	FUNC6(target);
	return FUNC2(link);
}
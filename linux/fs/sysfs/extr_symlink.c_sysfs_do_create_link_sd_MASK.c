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
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct kernfs_node*) ; 
 int FUNC1 (struct kernfs_node*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct kernfs_node* FUNC3 (struct kernfs_node*,char const*,struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_symlink_target_lock ; 
 int /*<<< orphan*/  FUNC8 (struct kernfs_node*,char const*) ; 

__attribute__((used)) static int FUNC9(struct kernfs_node *parent,
				   struct kobject *target_kobj,
				   const char *name, int warn)
{
	struct kernfs_node *kn, *target = NULL;

	if (FUNC2(!name || !parent))
		return -EINVAL;

	/*
	 * We don't own @target_kobj and it may be removed at any time.
	 * Synchronize using sysfs_symlink_target_lock.  See
	 * sysfs_remove_dir() for details.
	 */
	FUNC6(&sysfs_symlink_target_lock);
	if (target_kobj->sd) {
		target = target_kobj->sd;
		FUNC4(target);
	}
	FUNC7(&sysfs_symlink_target_lock);

	if (!target)
		return -ENOENT;

	kn = FUNC3(parent, name, target);
	FUNC5(target);

	if (!FUNC0(kn))
		return 0;

	if (warn && FUNC1(kn) == -EEXIST)
		FUNC8(parent, name);
	return FUNC1(kn);
}
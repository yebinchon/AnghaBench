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
typedef  int umode_t ;
struct kobject {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct attribute {int mode; int /*<<< orphan*/  name; } ;
struct bin_attribute {struct attribute attr; } ;
struct attribute_group {int (* is_visible ) (struct kobject*,struct attribute* const,int) ;int (* is_bin_visible ) (struct kobject*,struct bin_attribute* const,int) ;struct bin_attribute** bin_attrs; struct attribute** attrs; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int SYSFS_PREALLOC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*,struct attribute_group const*) ; 
 int FUNC3 (struct kobject*,struct attribute* const,int) ; 
 int FUNC4 (struct kobject*,struct bin_attribute* const,int) ; 
 int FUNC5 (struct kernfs_node*,struct attribute* const,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct kernfs_node *parent, struct kobject *kobj,
			kuid_t uid, kgid_t gid,
			const struct attribute_group *grp, int update)
{
	struct attribute *const *attr;
	struct bin_attribute *const *bin_attr;
	int error = 0, i;

	if (grp->attrs) {
		for (i = 0, attr = grp->attrs; *attr && !error; i++, attr++) {
			umode_t mode = (*attr)->mode;

			/*
			 * In update mode, we're changing the permissions or
			 * visibility.  Do this by first removing then
			 * re-adding (if required) the file.
			 */
			if (update)
				FUNC1(parent, (*attr)->name);
			if (grp->is_visible) {
				mode = grp->is_visible(kobj, *attr, i);
				if (!mode)
					continue;
			}

			FUNC0(mode & ~(SYSFS_PREALLOC | 0664),
			     "Attribute %s: Invalid permissions 0%o\n",
			     (*attr)->name, mode);

			mode &= SYSFS_PREALLOC | 0664;
			error = FUNC5(parent, *attr, false,
						       mode, uid, gid, NULL);
			if (FUNC6(error))
				break;
		}
		if (error) {
			FUNC2(parent, grp);
			goto exit;
		}
	}

	if (grp->bin_attrs) {
		for (i = 0, bin_attr = grp->bin_attrs; *bin_attr; i++, bin_attr++) {
			umode_t mode = (*bin_attr)->attr.mode;

			if (update)
				FUNC1(parent,
						(*bin_attr)->attr.name);
			if (grp->is_bin_visible) {
				mode = grp->is_bin_visible(kobj, *bin_attr, i);
				if (!mode)
					continue;
			}

			FUNC0(mode & ~(SYSFS_PREALLOC | 0664),
			     "Attribute %s: Invalid permissions 0%o\n",
			     (*bin_attr)->attr.name, mode);

			mode &= SYSFS_PREALLOC | 0664;
			error = FUNC5(parent,
					&(*bin_attr)->attr, true,
					mode,
					uid, gid, NULL);
			if (error)
				break;
		}
		if (error)
			FUNC2(parent, grp);
	}
exit:
	return error;
}
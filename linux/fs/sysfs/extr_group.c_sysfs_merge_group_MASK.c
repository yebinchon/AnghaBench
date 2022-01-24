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
struct kobject {int /*<<< orphan*/  sd; } ;
struct kernfs_node {int dummy; } ;
struct attribute_group {struct attribute** attrs; int /*<<< orphan*/  name; } ;
struct attribute {int /*<<< orphan*/  name; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int ENOENT ; 
 struct kernfs_node* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kernfs_node*,struct attribute* const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct kobject *kobj,
		       const struct attribute_group *grp)
{
	struct kernfs_node *parent;
	kuid_t uid;
	kgid_t gid;
	int error = 0;
	struct attribute *const *attr;
	int i;

	parent = FUNC0(kobj->sd, grp->name);
	if (!parent)
		return -ENOENT;

	FUNC3(kobj, &uid, &gid);

	for ((i = 0, attr = grp->attrs); *attr && !error; (++i, ++attr))
		error = FUNC4(parent, *attr, false,
					       (*attr)->mode, uid, gid, NULL);
	if (error) {
		while (--i >= 0)
			FUNC2(parent, (*--attr)->name);
	}
	FUNC1(parent);

	return error;
}
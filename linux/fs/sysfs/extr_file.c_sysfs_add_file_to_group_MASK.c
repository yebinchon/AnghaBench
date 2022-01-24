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
struct attribute {int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int ENOENT ; 
 struct kernfs_node* FUNC0 (struct kernfs_node*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kernfs_node*,struct attribute const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct kobject *kobj,
		const struct attribute *attr, const char *group)
{
	struct kernfs_node *parent;
	kuid_t uid;
	kgid_t gid;
	int error;

	if (group) {
		parent = FUNC0(kobj->sd, group);
	} else {
		parent = kobj->sd;
		FUNC1(parent);
	}

	if (!parent)
		return -ENOENT;

	FUNC3(kobj, &uid, &gid);
	error = FUNC4(parent, attr, false,
				       attr->mode, uid, gid, NULL);
	FUNC2(parent);

	return error;
}
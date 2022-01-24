#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kobject {struct kernfs_node* sd; TYPE_1__* parent; } ;
struct kernfs_node {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_2__ {struct kernfs_node* sd; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int FUNC1 (struct kernfs_node*) ; 
 int S_IRUGO ; 
 int S_IRWXU ; 
 int S_IXUGO ; 
 scalar_t__ FUNC2 (int) ; 
 struct kernfs_node* FUNC3 (struct kernfs_node*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kobject*,void const*) ; 
 int /*<<< orphan*/  FUNC4 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kobject*) ; 
 struct kernfs_node* sysfs_root_kn ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*,int /*<<< orphan*/ ) ; 

int FUNC7(struct kobject *kobj, const void *ns)
{
	struct kernfs_node *parent, *kn;
	kuid_t uid;
	kgid_t gid;

	if (FUNC2(!kobj))
		return -EINVAL;

	if (kobj->parent)
		parent = kobj->parent->sd;
	else
		parent = sysfs_root_kn;

	if (!parent)
		return -ENOENT;

	FUNC4(kobj, &uid, &gid);

	kn = FUNC3(parent, FUNC5(kobj),
				  S_IRWXU | S_IRUGO | S_IXUGO, uid, gid,
				  kobj, ns);
	if (FUNC0(kn)) {
		if (FUNC1(kn) == -EEXIST)
			FUNC6(parent, FUNC5(kobj));
		return FUNC1(kn);
	}

	kobj->sd = kn;
	return 0;
}
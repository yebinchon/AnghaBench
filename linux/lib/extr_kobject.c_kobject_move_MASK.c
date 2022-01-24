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
struct kobject {struct kobject* parent; TYPE_1__* kset; } ;
struct TYPE_2__ {struct kobject kobj; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_MOVE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct kobject* FUNC2 (struct kobject*) ; 
 char* FUNC3 (struct kobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC5 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC6 (struct kobject*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int FUNC9 (struct kobject*,struct kobject*,int /*<<< orphan*/ ) ; 

int FUNC10(struct kobject *kobj, struct kobject *new_parent)
{
	int error;
	struct kobject *old_parent;
	const char *devpath = NULL;
	char *devpath_string = NULL;
	char *envp[2];

	kobj = FUNC2(kobj);
	if (!kobj)
		return -EINVAL;
	new_parent = FUNC2(new_parent);
	if (!new_parent) {
		if (kobj->kset)
			new_parent = FUNC2(&kobj->kset->kobj);
	}

	/* old object path */
	devpath = FUNC3(kobj, GFP_KERNEL);
	if (!devpath) {
		error = -ENOMEM;
		goto out;
	}
	devpath_string = FUNC1(FUNC8(devpath) + 15, GFP_KERNEL);
	if (!devpath_string) {
		error = -ENOMEM;
		goto out;
	}
	FUNC7(devpath_string, "DEVPATH_OLD=%s", devpath);
	envp[0] = devpath_string;
	envp[1] = NULL;
	error = FUNC9(kobj, new_parent, FUNC4(kobj));
	if (error)
		goto out;
	old_parent = kobj->parent;
	kobj->parent = new_parent;
	new_parent = NULL;
	FUNC5(old_parent);
	FUNC6(kobj, KOBJ_MOVE, envp);
out:
	FUNC5(new_parent);
	FUNC5(kobj);
	FUNC0(devpath_string);
	FUNC0(devpath);
	return error;
}
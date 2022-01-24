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
struct kobject {char* name; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_MOVE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct kobject* FUNC3 (struct kobject*) ; 
 char* FUNC4 (struct kobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC6 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC7 (struct kobject*,int /*<<< orphan*/ ,char**) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int FUNC11 (struct kobject*,char const*,int /*<<< orphan*/ ) ; 

int FUNC12(struct kobject *kobj, const char *new_name)
{
	int error = 0;
	const char *devpath = NULL;
	const char *dup_name = NULL, *name;
	char *devpath_string = NULL;
	char *envp[2];

	kobj = FUNC3(kobj);
	if (!kobj)
		return -EINVAL;
	if (!kobj->parent) {
		FUNC6(kobj);
		return -EINVAL;
	}

	devpath = FUNC4(kobj, GFP_KERNEL);
	if (!devpath) {
		error = -ENOMEM;
		goto out;
	}
	devpath_string = FUNC2(FUNC10(devpath) + 15, GFP_KERNEL);
	if (!devpath_string) {
		error = -ENOMEM;
		goto out;
	}
	FUNC9(devpath_string, "DEVPATH_OLD=%s", devpath);
	envp[0] = devpath_string;
	envp[1] = NULL;

	name = dup_name = FUNC8(new_name, GFP_KERNEL);
	if (!name) {
		error = -ENOMEM;
		goto out;
	}

	error = FUNC11(kobj, new_name, FUNC5(kobj));
	if (error)
		goto out;

	/* Install the new kobject name */
	dup_name = kobj->name;
	kobj->name = name;

	/* This function is mostly/only used for network interface.
	 * Some hotplug package track interfaces by their name and
	 * therefore want to know when the name is changed by the user. */
	FUNC7(kobj, KOBJ_MOVE, envp);

out:
	FUNC1(dup_name);
	FUNC0(devpath_string);
	FUNC0(devpath);
	FUNC6(kobj);

	return error;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kset; } ;
struct foo_obj {TYPE_1__ kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  example_kset ; 
 int /*<<< orphan*/  foo_ktype ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct foo_obj* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct foo_obj *FUNC4(const char *name)
{
	struct foo_obj *foo;
	int retval;

	/* allocate the memory for the whole object */
	foo = FUNC3(sizeof(*foo), GFP_KERNEL);
	if (!foo)
		return NULL;

	/*
	 * As we have a kset for this kobject, we need to set it before calling
	 * the kobject core.
	 */
	foo->kobj.kset = example_kset;

	/*
	 * Initialize and add the kobject to the kernel.  All the default files
	 * will be created here.  As we have already specified a kset for this
	 * kobject, we don't have to set a parent for the kobject, the kobject
	 * will be placed beneath that kset automatically.
	 */
	retval = FUNC0(&foo->kobj, &foo_ktype, NULL, "%s", name);
	if (retval) {
		FUNC1(&foo->kobj);
		return NULL;
	}

	/*
	 * We are always responsible for sending the uevent that the kobject
	 * was added to the system.
	 */
	FUNC2(&foo->kobj, KOBJ_ADD);

	return foo;
}
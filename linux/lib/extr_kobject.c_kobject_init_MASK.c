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
struct kobject {struct kobj_type* ktype; scalar_t__ state_initialized; } ;
struct kobj_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct kobject*,...) ; 

void FUNC3(struct kobject *kobj, struct kobj_type *ktype)
{
	char *err_str;

	if (!kobj) {
		err_str = "invalid kobject pointer!";
		goto error;
	}
	if (!ktype) {
		err_str = "must have a ktype to be initialized properly!\n";
		goto error;
	}
	if (kobj->state_initialized) {
		/* do not error out as sometimes we can recover */
		FUNC2("kobject (%p): tried to init an initialized object, something is seriously wrong.\n",
		       kobj);
		FUNC0();
	}

	FUNC1(kobj);
	kobj->ktype = ktype;
	return;

error:
	FUNC2("kobject (%p): %s\n", kobj, err_str);
	FUNC0();
}
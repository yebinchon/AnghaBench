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
typedef  int /*<<< orphan*/  va_list ;
struct kobject {struct kobject* parent; } ;

/* Variables and functions */
 int FUNC0 (struct kobject*) ; 
 int FUNC1 (struct kobject*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct kobject *kobj,
					   struct kobject *parent,
					   const char *fmt, va_list vargs)
{
	int retval;

	retval = FUNC1(kobj, fmt, vargs);
	if (retval) {
		FUNC2("kobject: can not set name properly!\n");
		return retval;
	}
	kobj->parent = parent;
	return FUNC0(kobj);
}
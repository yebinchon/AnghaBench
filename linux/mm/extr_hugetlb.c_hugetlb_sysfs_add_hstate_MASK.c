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
struct kobject {int dummy; } ;
struct hstate {int /*<<< orphan*/  name; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct hstate*) ; 
 struct kobject* FUNC1 (int /*<<< orphan*/ ,struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 int FUNC3 (struct kobject*,struct attribute_group const*) ; 

__attribute__((used)) static int FUNC4(struct hstate *h, struct kobject *parent,
				    struct kobject **hstate_kobjs,
				    const struct attribute_group *hstate_attr_group)
{
	int retval;
	int hi = FUNC0(h);

	hstate_kobjs[hi] = FUNC1(h->name, parent);
	if (!hstate_kobjs[hi])
		return -ENOMEM;

	retval = FUNC3(hstate_kobjs[hi], hstate_attr_group);
	if (retval)
		FUNC2(hstate_kobjs[hi]);

	return retval;
}
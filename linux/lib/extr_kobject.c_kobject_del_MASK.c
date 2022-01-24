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
struct kobject {int /*<<< orphan*/ * parent; scalar_t__ state_in_sysfs; struct kernfs_node* sd; } ;
struct kobj_type {int /*<<< orphan*/  default_groups; } ;
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 struct kobj_type* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC5 (struct kobject*,int /*<<< orphan*/ ) ; 

void FUNC6(struct kobject *kobj)
{
	struct kernfs_node *sd;
	const struct kobj_type *ktype;

	if (!kobj)
		return;

	sd = kobj->sd;
	ktype = FUNC0(kobj);

	if (ktype)
		FUNC5(kobj, ktype->default_groups);

	FUNC4(kobj);
	FUNC3(sd);

	kobj->state_in_sysfs = 0;
	FUNC1(kobj);
	FUNC2(kobj->parent);
	kobj->parent = NULL;
}
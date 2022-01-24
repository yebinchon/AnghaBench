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
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kobject*,int /*<<< orphan*/ ,struct attribute_group const*) ; 

int FUNC1(struct kobject *kobj,
		       const struct attribute_group *grp)
{
	return FUNC0(kobj, 0, grp);
}
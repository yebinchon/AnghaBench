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
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kernfs_node*,struct kobject*,char const*,int) ; 

int FUNC1(struct kernfs_node *kn, struct kobject *target,
			 const char *name)
{
	return FUNC0(kn, target, name, 1);
}
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
struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int FUNC1 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC2 (struct kernfs_node*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*,char const*) ; 

int FUNC4(struct kobject *parent_kobj, const char *name)
{
	struct kernfs_node *kn, *parent = parent_kobj->sd;

	kn = FUNC2(parent, name);
	if (FUNC0(kn)) {
		if (FUNC1(kn) == -EEXIST)
			FUNC3(parent, name);
		return FUNC1(kn);
	}

	return 0;
}
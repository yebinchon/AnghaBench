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
struct kobject {int /*<<< orphan*/  sd; } ;
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 struct kernfs_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct kernfs_node*,char const*,void const*) ; 

int FUNC3(struct kobject *kobj, const char *new_name,
			const void *new_ns)
{
	struct kernfs_node *parent;
	int ret;

	parent = FUNC0(kobj->sd);
	ret = FUNC2(kobj->sd, parent, new_name, new_ns);
	FUNC1(parent);
	return ret;
}
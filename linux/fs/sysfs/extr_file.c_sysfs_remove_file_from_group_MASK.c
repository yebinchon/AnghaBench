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
struct attribute {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct kernfs_node* FUNC0 (struct kernfs_node*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*,int /*<<< orphan*/ ) ; 

void FUNC4(struct kobject *kobj,
		const struct attribute *attr, const char *group)
{
	struct kernfs_node *parent;

	if (group) {
		parent = FUNC0(kobj->sd, group);
	} else {
		parent = kobj->sd;
		FUNC1(parent);
	}

	if (parent) {
		FUNC3(parent, attr->name);
		FUNC2(parent);
	}
}
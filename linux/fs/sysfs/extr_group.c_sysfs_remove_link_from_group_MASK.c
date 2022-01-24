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
 struct kernfs_node* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*,char const*) ; 

void FUNC3(struct kobject *kobj, const char *group_name,
				  const char *link_name)
{
	struct kernfs_node *parent;

	parent = FUNC0(kobj->sd, group_name);
	if (parent) {
		FUNC2(parent, link_name);
		FUNC1(parent);
	}
}
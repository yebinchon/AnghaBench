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
 scalar_t__ FUNC0 (int) ; 
 struct kernfs_node* FUNC1 (struct kernfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 int FUNC3 (struct kernfs_node*) ; 

bool FUNC4(struct kobject *kobj, const struct attribute *attr)
{
	struct kernfs_node *parent = kobj->sd;
	struct kernfs_node *kn;
	bool ret;

	kn = FUNC1(parent, attr->name);
	if (FUNC0(!kn))
		return false;

	ret = FUNC3(kn);

	FUNC2(kn);
	return ret;
}
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
struct attribute {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 

struct kernfs_node *FUNC3(struct kobject *kobj,
						  const struct attribute *attr)
{
	struct kernfs_node *kn;

	FUNC2(kobj);
	kn = FUNC1(kobj->sd, attr->name);
	if (kn)
		FUNC0(kn);
	return kn;
}
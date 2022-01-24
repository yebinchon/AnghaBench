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
 struct kernfs_node* FUNC0 (struct kernfs_node*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 

void FUNC4(struct kobject *kobj, const char *dir, const char *attr)
{
	struct kernfs_node *kn = kobj->sd, *tmp;

	if (kn && dir)
		kn = FUNC0(kn, dir);
	else
		FUNC1(kn);

	if (kn && attr) {
		tmp = FUNC0(kn, attr);
		FUNC3(kn);
		kn = tmp;
	}

	if (kn) {
		FUNC2(kn);
		FUNC3(kn);
	}
}
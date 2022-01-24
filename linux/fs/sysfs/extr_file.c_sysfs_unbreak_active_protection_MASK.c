#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct kernfs_node {TYPE_1__* parent; } ;
struct TYPE_2__ {struct kobject* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 

void FUNC3(struct kernfs_node *kn)
{
	struct kobject *kobj = kn->parent->priv;

	FUNC1(kn);
	FUNC0(kn);
	FUNC2(kobj);
}
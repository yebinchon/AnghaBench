#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kernfs_node {int /*<<< orphan*/  rb; TYPE_2__* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  children; int /*<<< orphan*/  subdirs; } ;
struct TYPE_4__ {TYPE_1__ dir; } ;

/* Variables and functions */
 scalar_t__ KERNFS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct kernfs_node *kn)
{
	if (FUNC1(&kn->rb))
		return false;

	if (FUNC2(kn) == KERNFS_DIR)
		kn->parent->dir.subdirs--;

	FUNC3(&kn->rb, &kn->parent->dir.children);
	FUNC0(&kn->rb);
	return true;
}
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
struct rb_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  children; } ;
struct kernfs_node {TYPE_1__ dir; } ;

/* Variables and functions */
 scalar_t__ KERNFS_DIR ; 
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 struct rb_node* FUNC1 (int /*<<< orphan*/ *) ; 
 struct kernfs_node* FUNC2 (struct rb_node*) ; 

__attribute__((used)) static struct kernfs_node *FUNC3(struct kernfs_node *pos)
{
	struct kernfs_node *last;

	while (true) {
		struct rb_node *rbn;

		last = pos;

		if (FUNC0(pos) != KERNFS_DIR)
			break;

		rbn = FUNC1(&pos->dir.children);
		if (!rbn)
			break;

		pos = FUNC2(rbn);
	}

	return last;
}
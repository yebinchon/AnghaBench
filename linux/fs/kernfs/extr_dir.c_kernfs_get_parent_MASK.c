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
struct kernfs_node {struct kernfs_node* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kernfs_node*) ; 
 int /*<<< orphan*/  kernfs_rename_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct kernfs_node *FUNC3(struct kernfs_node *kn)
{
	struct kernfs_node *parent;
	unsigned long flags;

	FUNC1(&kernfs_rename_lock, flags);
	parent = kn->parent;
	FUNC0(parent);
	FUNC2(&kernfs_rename_lock, flags);

	return parent;
}
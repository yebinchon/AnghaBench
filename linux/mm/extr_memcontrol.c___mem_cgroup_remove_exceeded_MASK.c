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
struct mem_cgroup_tree_per_node {int /*<<< orphan*/  rb_root; int /*<<< orphan*/ * rb_rightmost; } ;
struct mem_cgroup_per_node {int on_tree; int /*<<< orphan*/  tree_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mem_cgroup_per_node *mz,
					 struct mem_cgroup_tree_per_node *mctz)
{
	if (!mz->on_tree)
		return;

	if (&mz->tree_node == mctz->rb_rightmost)
		mctz->rb_rightmost = FUNC1(&mz->tree_node);

	FUNC0(&mz->tree_node, &mctz->rb_root);
	mz->on_tree = false;
}
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
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_refcount_tree*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_refcount_tree*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ocfs2_super *osb,
				struct ocfs2_refcount_tree *tree, int rw)
{
	if (rw)
		FUNC3(&tree->rf_sem);
	else
		FUNC2(&tree->rf_sem);

	FUNC1(tree, rw);
	FUNC0(tree);
}
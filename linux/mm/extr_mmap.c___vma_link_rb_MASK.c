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
struct vm_area_struct {scalar_t__ rb_subtree_gap; int /*<<< orphan*/  vm_rb; struct vm_area_struct* vm_next; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mm_rb; int /*<<< orphan*/  highest_vm_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,int /*<<< orphan*/ *) ; 

void FUNC4(struct mm_struct *mm, struct vm_area_struct *vma,
		struct rb_node **rb_link, struct rb_node *rb_parent)
{
	/* Update tracking information for the gap following the new vma. */
	if (vma->vm_next)
		FUNC2(vma->vm_next);
	else
		mm->highest_vm_end = FUNC1(vma);

	/*
	 * vma->vm_prev wasn't known when we followed the rbtree to find the
	 * correct insertion point for that vma. As a result, we could not
	 * update the vma vm_rb parents rb_subtree_gap values on the way down.
	 * So, we first insert the vma with a zero rb_subtree_gap value
	 * (to be consistent with what we did on the way down), and then
	 * immediately update the gap to the correct value. Finally we
	 * rebalance the rbtree after all augmented values have been set.
	 */
	FUNC0(&vma->vm_rb, rb_parent, rb_link);
	vma->rb_subtree_gap = 0;
	FUNC2(vma);
	FUNC3(vma, &mm->mm_rb);
}
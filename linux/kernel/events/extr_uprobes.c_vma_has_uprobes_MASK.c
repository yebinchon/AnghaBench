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
struct vm_area_struct {int /*<<< orphan*/  vm_file; } ;
struct rb_node {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rb_node* FUNC1 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uprobes_treelock ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,unsigned long) ; 

__attribute__((used)) static bool
FUNC5(struct vm_area_struct *vma, unsigned long start, unsigned long end)
{
	loff_t min, max;
	struct inode *inode;
	struct rb_node *n;

	inode = FUNC0(vma->vm_file);

	min = FUNC4(vma, start);
	max = min + (end - start) - 1;

	FUNC2(&uprobes_treelock);
	n = FUNC1(inode, min, max);
	FUNC3(&uprobes_treelock);

	return !!n;
}
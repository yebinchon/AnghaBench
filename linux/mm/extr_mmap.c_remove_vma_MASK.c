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
struct vm_area_struct {scalar_t__ vm_file; TYPE_1__* vm_ops; struct vm_area_struct* vm_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct vm_area_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*) ; 

__attribute__((used)) static struct vm_area_struct *FUNC6(struct vm_area_struct *vma)
{
	struct vm_area_struct *next = vma->vm_next;

	FUNC1();
	if (vma->vm_ops && vma->vm_ops->close)
		vma->vm_ops->close(vma);
	if (vma->vm_file)
		FUNC0(vma->vm_file);
	FUNC2(FUNC5(vma));
	FUNC4(vma);
	return next;
}
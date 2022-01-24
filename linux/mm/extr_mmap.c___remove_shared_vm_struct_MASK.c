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
struct vm_area_struct {int vm_flags; } ;
struct file {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_mmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_writecount; } ;

/* Variables and functions */
 int VM_DENYWRITE ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct vm_area_struct *vma,
		struct file *file, struct address_space *mapping)
{
	if (vma->vm_flags & VM_DENYWRITE)
		FUNC0(&FUNC1(file)->i_writecount);
	if (vma->vm_flags & VM_SHARED)
		FUNC4(mapping);

	FUNC2(mapping);
	FUNC5(vma, &mapping->i_mmap);
	FUNC3(mapping);
}
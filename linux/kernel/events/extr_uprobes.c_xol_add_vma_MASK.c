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
struct xol_area {int vaddr; int /*<<< orphan*/  xol_mapping; } ;
struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ xol_area; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; TYPE_1__ uprobes_state; } ;

/* Variables and functions */
 int EALREADY ; 
 int EINTR ; 
 scalar_t__ FUNC0 (struct vm_area_struct*) ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC1 (struct vm_area_struct*) ; 
 scalar_t__ TASK_SIZE ; 
 int VM_DONTCOPY ; 
 int VM_EXEC ; 
 int VM_IO ; 
 int VM_MAYEXEC ; 
 struct vm_area_struct* FUNC2 (struct mm_struct*,int,scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,struct xol_area*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mm_struct *mm, struct xol_area *area)
{
	struct vm_area_struct *vma;
	int ret;

	if (FUNC3(&mm->mmap_sem))
		return -EINTR;

	if (mm->uprobes_state.xol_area) {
		ret = -EALREADY;
		goto fail;
	}

	if (!area->vaddr) {
		/* Try to map as high as possible, this is only a hint. */
		area->vaddr = FUNC4(NULL, TASK_SIZE - PAGE_SIZE,
						PAGE_SIZE, 0, 0);
		if (area->vaddr & ~PAGE_MASK) {
			ret = area->vaddr;
			goto fail;
		}
	}

	vma = FUNC2(mm, area->vaddr, PAGE_SIZE,
				VM_EXEC|VM_MAYEXEC|VM_DONTCOPY|VM_IO,
				&area->xol_mapping);
	if (FUNC0(vma)) {
		ret = FUNC1(vma);
		goto fail;
	}

	ret = 0;
	/* pairs with get_xol_area() */
	FUNC5(&mm->uprobes_state.xol_area, area); /* ^^^ */
 fail:
	FUNC6(&mm->mmap_sem);

	return ret;
}
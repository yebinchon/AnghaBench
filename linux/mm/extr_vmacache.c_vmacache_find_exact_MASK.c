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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct mm_struct {int dummy; } ;
struct TYPE_3__ {struct vm_area_struct** vmas; } ;
struct TYPE_4__ {TYPE_1__ vmacache; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMACACHE_FIND_CALLS ; 
 int /*<<< orphan*/  VMACACHE_FIND_HITS ; 
 int FUNC0 (unsigned long) ; 
 int VMACACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 

struct vm_area_struct *FUNC3(struct mm_struct *mm,
					   unsigned long start,
					   unsigned long end)
{
	int idx = FUNC0(start);
	int i;

	FUNC1(VMACACHE_FIND_CALLS);

	if (!FUNC2(mm))
		return NULL;

	for (i = 0; i < VMACACHE_SIZE; i++) {
		struct vm_area_struct *vma = current->vmacache.vmas[idx];

		if (vma && vma->vm_start == start && vma->vm_end == end) {
			FUNC1(VMACACHE_FIND_HITS);
			return vma;
		}
		if (++idx == VMACACHE_SIZE)
			idx = 0;
	}

	return NULL;
}
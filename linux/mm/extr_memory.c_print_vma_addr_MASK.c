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
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct file* vm_file; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct file*,char*,int /*<<< orphan*/ ) ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(char *prefix, unsigned long ip)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;

	/*
	 * we might be running from an atomic context so we cannot sleep
	 */
	if (!FUNC2(&mm->mmap_sem))
		return;

	vma = FUNC4(mm, ip);
	if (vma && vma->vm_file) {
		struct file *f = vma->vm_file;
		char *buf = (char *)FUNC1(GFP_NOWAIT);
		if (buf) {
			char *p;

			p = FUNC3(f, buf, PAGE_SIZE);
			if (FUNC0(p))
				p = "?";
			FUNC7("%s%s[%lx+%lx]", prefix, FUNC6(p),
					vma->vm_start,
					vma->vm_end - vma->vm_start);
			FUNC5((unsigned long)buf);
		}
	}
	FUNC8(&mm->mmap_sem);
}
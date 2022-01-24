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
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int FUNC0 (unsigned long,int,int /*<<< orphan*/ ,struct page**,int*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mm_struct *mm, unsigned long addr)
{
	struct page *p;
	int err;

	int locked = 1;
	err = FUNC0(addr & PAGE_MASK, 1, 0, &p, &locked);
	if (err >= 0) {
		err = FUNC1(p);
		FUNC2(p);
	}
	if (locked)
		FUNC3(&mm->mmap_sem);
	return err;
}
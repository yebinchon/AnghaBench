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
struct vm_area_struct {int /*<<< orphan*/  anon_vma; } ;
struct rmap_item {int /*<<< orphan*/  anon_vma; int /*<<< orphan*/  address; struct mm_struct* mm; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rmap_item*) ; 
 int FUNC4 (struct vm_area_struct*,struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct rmap_item *rmap_item,
				      struct page *page, struct page *kpage)
{
	struct mm_struct *mm = rmap_item->mm;
	struct vm_area_struct *vma;
	int err = -EFAULT;

	FUNC0(&mm->mmap_sem);
	vma = FUNC1(mm, rmap_item->address);
	if (!vma)
		goto out;

	err = FUNC4(vma, page, kpage);
	if (err)
		goto out;

	/* Unstable nid is in union with stable anon_vma: remove first */
	FUNC3(rmap_item);

	/* Must get reference to anon_vma while still holding mmap_sem */
	rmap_item->anon_vma = vma->anon_vma;
	FUNC2(vma->anon_vma);
out:
	FUNC5(&mm->mmap_sem);
	return err;
}
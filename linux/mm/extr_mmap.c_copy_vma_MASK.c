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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; TYPE_1__* vm_ops; scalar_t__ vm_file; int /*<<< orphan*/  vm_userfaultfd_ctx; int /*<<< orphan*/  anon_vma; int /*<<< orphan*/  vm_flags; struct mm_struct* vm_mm; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  unsigned long pgoff_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* open ) (struct vm_area_struct*) ;} ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,struct vm_area_struct*) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*,struct vm_area_struct*) ; 
 scalar_t__ FUNC2 (struct mm_struct*,unsigned long,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*) ; 
 scalar_t__ FUNC6 (int) ; 
 struct vm_area_struct* FUNC7 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*) ; 
 scalar_t__ FUNC9 (struct vm_area_struct*,struct vm_area_struct*) ; 
 scalar_t__ FUNC10 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ; 
 struct vm_area_struct* FUNC12 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_area_struct*) ; 

struct vm_area_struct *FUNC14(struct vm_area_struct **vmap,
	unsigned long addr, unsigned long len, pgoff_t pgoff,
	bool *need_rmap_locks)
{
	struct vm_area_struct *vma = *vmap;
	unsigned long vma_start = vma->vm_start;
	struct mm_struct *mm = vma->vm_mm;
	struct vm_area_struct *new_vma, *prev;
	struct rb_node **rb_link, *rb_parent;
	bool faulted_in_anon_vma = true;

	/*
	 * If anonymous vma has not yet been faulted, update new pgoff
	 * to match new location, to increase its chance of merging.
	 */
	if (FUNC6(FUNC10(vma) && !vma->anon_vma)) {
		pgoff = addr >> PAGE_SHIFT;
		faulted_in_anon_vma = false;
	}

	if (FUNC2(mm, addr, addr + len, &prev, &rb_link, &rb_parent))
		return NULL;	/* should never get here */
	new_vma = FUNC12(mm, prev, addr, addr + len, vma->vm_flags,
			    vma->anon_vma, vma->vm_file, pgoff, FUNC13(vma),
			    vma->vm_userfaultfd_ctx);
	if (new_vma) {
		/*
		 * Source vma may have been merged into new_vma
		 */
		if (FUNC6(vma_start >= new_vma->vm_start &&
			     vma_start < new_vma->vm_end)) {
			/*
			 * The only way we can get a vma_merge with
			 * self during an mremap is if the vma hasn't
			 * been faulted in yet and we were allowed to
			 * reset the dst vma->vm_pgoff to the
			 * destination address of the mremap to allow
			 * the merge to happen. mremap must change the
			 * vm_pgoff linearity between src and dst vmas
			 * (in turn preventing a vma_merge) to be
			 * safe. It is only safe to keep the vm_pgoff
			 * linear if there are no pages mapped yet.
			 */
			FUNC0(faulted_in_anon_vma, new_vma);
			*vmap = vma = new_vma;
		}
		*need_rmap_locks = (new_vma->vm_pgoff <= vma->vm_pgoff);
	} else {
		new_vma = FUNC7(vma);
		if (!new_vma)
			goto out;
		new_vma->vm_start = addr;
		new_vma->vm_end = addr + len;
		new_vma->vm_pgoff = pgoff;
		if (FUNC9(vma, new_vma))
			goto out_free_vma;
		if (FUNC1(new_vma, vma))
			goto out_free_mempol;
		if (new_vma->vm_file)
			FUNC3(new_vma->vm_file);
		if (new_vma->vm_ops && new_vma->vm_ops->open)
			new_vma->vm_ops->open(new_vma);
		FUNC11(mm, new_vma, prev, rb_link, rb_parent);
		*need_rmap_locks = false;
	}
	return new_vma;

out_free_mempol:
	FUNC4(FUNC13(new_vma));
out_free_vma:
	FUNC8(new_vma);
out:
	return NULL;
}
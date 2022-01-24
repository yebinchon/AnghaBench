#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {struct mempolicy* vm_policy; TYPE_1__* vm_ops; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_9__ {int /*<<< orphan*/  user_nodemask; } ;
struct TYPE_8__ {int /*<<< orphan*/  nodes; } ;
struct mempolicy {int mode; int flags; TYPE_3__ w; TYPE_2__ v; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_10__ {int /*<<< orphan*/  il_prev; struct mempolicy* mempolicy; struct mm_struct* mm; } ;
struct TYPE_7__ {struct mempolicy* (* get_policy ) (struct vm_area_struct*,unsigned long) ;} ;

/* Variables and functions */
 long EFAULT ; 
 long EINVAL ; 
 int MPOL_DEFAULT ; 
 unsigned long MPOL_F_ADDR ; 
 unsigned long MPOL_F_MEMS_ALLOWED ; 
 unsigned long MPOL_F_NODE ; 
 int MPOL_INTERLEAVE ; 
 int MPOL_MODE_FLAGS ; 
 int /*<<< orphan*/  cpuset_current_mems_allowed ; 
 TYPE_4__* current ; 
 struct mempolicy default_policy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mempolicy*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC5 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC6 (struct mempolicy*) ; 
 scalar_t__ FUNC7 (struct mempolicy*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mempolicy* FUNC9 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC13(int *policy, nodemask_t *nmask,
			     unsigned long addr, unsigned long flags)
{
	int err;
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma = NULL;
	struct mempolicy *pol = current->mempolicy, *pol_refcount = NULL;

	if (flags &
		~(unsigned long)(MPOL_F_NODE|MPOL_F_ADDR|MPOL_F_MEMS_ALLOWED))
		return -EINVAL;

	if (flags & MPOL_F_MEMS_ALLOWED) {
		if (flags & (MPOL_F_NODE|MPOL_F_ADDR))
			return -EINVAL;
		*policy = 0;	/* just so it's initialized */
		FUNC10(current);
		*nmask  = cpuset_current_mems_allowed;
		FUNC11(current);
		return 0;
	}

	if (flags & MPOL_F_ADDR) {
		/*
		 * Do NOT fall back to task policy if the
		 * vma/shared policy at addr is NULL.  We
		 * want to return MPOL_DEFAULT in this case.
		 */
		FUNC0(&mm->mmap_sem);
		vma = FUNC1(mm, addr, addr+1);
		if (!vma) {
			FUNC12(&mm->mmap_sem);
			return -EFAULT;
		}
		if (vma->vm_ops && vma->vm_ops->get_policy)
			pol = vma->vm_ops->get_policy(vma, addr);
		else
			pol = vma->vm_policy;
	} else if (addr)
		return -EINVAL;

	if (!pol)
		pol = &default_policy;	/* indicates default behavior */

	if (flags & MPOL_F_NODE) {
		if (flags & MPOL_F_ADDR) {
			/*
			 * Take a refcount on the mpol, lookup_node()
			 * wil drop the mmap_sem, so after calling
			 * lookup_node() only "pol" remains valid, "vma"
			 * is stale.
			 */
			pol_refcount = pol;
			vma = NULL;
			FUNC5(pol);
			err = FUNC3(mm, addr);
			if (err < 0)
				goto out;
			*policy = err;
		} else if (pol == current->mempolicy &&
				pol->mode == MPOL_INTERLEAVE) {
			*policy = FUNC8(current->il_prev, pol->v.nodes);
		} else {
			err = -EINVAL;
			goto out;
		}
	} else {
		*policy = pol == &default_policy ? MPOL_DEFAULT :
						pol->mode;
		/*
		 * Internal mempolicy flags must be masked off before exposing
		 * the policy to userspace.
		 */
		*policy |= (pol->flags & MPOL_MODE_FLAGS);
	}

	err = 0;
	if (nmask) {
		if (FUNC7(pol)) {
			*nmask = pol->w.user_nodemask;
		} else {
			FUNC10(current);
			FUNC2(pol, nmask);
			FUNC11(current);
		}
	}

 out:
	FUNC4(pol);
	if (vma)
		FUNC12(&mm->mmap_sem);
	if (pol_refcount)
		FUNC6(pol_refcount);
	return err;
}
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
struct vm_area_struct {struct mempolicy* vm_policy; TYPE_1__* vm_ops; } ;
struct mempolicy {int dummy; } ;
struct TYPE_2__ {struct mempolicy* (* get_policy ) (struct vm_area_struct*,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mempolicy*) ; 
 scalar_t__ FUNC1 (struct mempolicy*) ; 
 struct mempolicy* FUNC2 (struct vm_area_struct*,unsigned long) ; 

struct mempolicy *FUNC3(struct vm_area_struct *vma,
						unsigned long addr)
{
	struct mempolicy *pol = NULL;

	if (vma) {
		if (vma->vm_ops && vma->vm_ops->get_policy) {
			pol = vma->vm_ops->get_policy(vma, addr);
		} else if (vma->vm_policy) {
			pol = vma->vm_policy;

			/*
			 * shmem_alloc_page() passes MPOL_F_SHARED policy with
			 * a pseudo vma whose vma->vm_ops=NULL. Take a reference
			 * count on these policies which will be dropped by
			 * mpol_cond_put() later
			 */
			if (FUNC1(pol))
				FUNC0(pol);
		}
	}

	return pol;
}
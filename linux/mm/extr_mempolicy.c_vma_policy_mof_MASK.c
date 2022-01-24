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
struct vm_area_struct {struct mempolicy* vm_policy; int /*<<< orphan*/  vm_start; TYPE_1__* vm_ops; } ;
struct mempolicy {int flags; } ;
struct TYPE_2__ {struct mempolicy* (* get_policy ) (struct vm_area_struct*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int MPOL_F_MOF ; 
 int /*<<< orphan*/  current ; 
 struct mempolicy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mempolicy*) ; 
 struct mempolicy* FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 

bool FUNC3(struct vm_area_struct *vma)
{
	struct mempolicy *pol;

	if (vma->vm_ops && vma->vm_ops->get_policy) {
		bool ret = false;

		pol = vma->vm_ops->get_policy(vma, vma->vm_start);
		if (pol && (pol->flags & MPOL_F_MOF))
			ret = true;
		FUNC1(pol);

		return ret;
	}

	pol = vma->vm_policy;
	if (!pol)
		pol = FUNC0(current);

	return pol->flags & MPOL_F_MOF;
}
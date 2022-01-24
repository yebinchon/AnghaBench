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
struct vm_area_struct {scalar_t__ vm_pgoff; } ;
struct sp_node {int dummy; } ;
struct shared_policy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nodes; } ;
struct mempolicy {int mode; int flags; TYPE_1__ v; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,unsigned long,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct shared_policy*,scalar_t__,scalar_t__,struct sp_node*) ; 
 struct sp_node* FUNC3 (scalar_t__,scalar_t__,struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC4 (struct sp_node*) ; 
 unsigned long FUNC5 (struct vm_area_struct*) ; 

int FUNC6(struct shared_policy *info,
			struct vm_area_struct *vma, struct mempolicy *npol)
{
	int err;
	struct sp_node *new = NULL;
	unsigned long sz = FUNC5(vma);

	FUNC1("set_shared_policy %lx sz %lu %d %d %lx\n",
		 vma->vm_pgoff,
		 sz, npol ? npol->mode : -1,
		 npol ? npol->flags : -1,
		 npol ? FUNC0(npol->v.nodes)[0] : NUMA_NO_NODE);

	if (npol) {
		new = FUNC3(vma->vm_pgoff, vma->vm_pgoff + sz, npol);
		if (!new)
			return -ENOMEM;
	}
	err = FUNC2(info, vma->vm_pgoff, vma->vm_pgoff+sz, new);
	if (err && new)
		FUNC4(new);
	return err;
}
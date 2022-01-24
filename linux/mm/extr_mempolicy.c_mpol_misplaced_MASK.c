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
struct zoneref {int /*<<< orphan*/  zone; } ;
struct vm_area_struct {unsigned long vm_pgoff; int /*<<< orphan*/  vm_start; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int preferred_node; int /*<<< orphan*/  nodes; } ;
struct mempolicy {int flags; int mode; TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
#define  MPOL_BIND 130 
 int MPOL_F_LOCAL ; 
 int MPOL_F_MOF ; 
 int MPOL_F_MORON ; 
#define  MPOL_INTERLEAVE 129 
#define  MPOL_PREFERRED 128 
 int NUMA_NO_NODE ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  current ; 
 struct zoneref* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mempolicy* FUNC3 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int FUNC9 (struct mempolicy*,unsigned long) ; 
 int FUNC10 (struct page*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct page*,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct page *page, struct vm_area_struct *vma, unsigned long addr)
{
	struct mempolicy *pol;
	struct zoneref *z;
	int curnid = FUNC10(page);
	unsigned long pgoff;
	int thiscpu = FUNC11();
	int thisnid = FUNC1(thiscpu);
	int polnid = NUMA_NO_NODE;
	int ret = -1;

	pol = FUNC3(vma, addr);
	if (!(pol->flags & MPOL_F_MOF))
		goto out;

	switch (pol->mode) {
	case MPOL_INTERLEAVE:
		pgoff = vma->vm_pgoff;
		pgoff += (addr - vma->vm_start) >> PAGE_SHIFT;
		polnid = FUNC9(pol, pgoff);
		break;

	case MPOL_PREFERRED:
		if (pol->flags & MPOL_F_LOCAL)
			polnid = FUNC8();
		else
			polnid = pol->v.preferred_node;
		break;

	case MPOL_BIND:

		/*
		 * allows binding to multiple nodes.
		 * use current page if in policy nodemask,
		 * else select nearest allowed node, if any.
		 * If no allowed nodes, use current [!misplaced].
		 */
		if (FUNC6(curnid, pol->v.nodes))
			goto out;
		z = FUNC2(
				FUNC7(FUNC8(), GFP_HIGHUSER),
				FUNC4(GFP_HIGHUSER),
				&pol->v.nodes);
		polnid = FUNC13(z->zone);
		break;

	default:
		FUNC0();
	}

	/* Migrate the page towards the node whose CPU is referencing it */
	if (pol->flags & MPOL_F_MORON) {
		polnid = thisnid;

		if (!FUNC12(current, page, curnid, thiscpu))
			goto out;
	}

	if (curnid != polnid)
		ret = polnid;
out:
	FUNC5(pol);

	return ret;
}
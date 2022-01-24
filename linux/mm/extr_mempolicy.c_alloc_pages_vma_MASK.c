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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int preferred_node; } ;
struct mempolicy {scalar_t__ mode; int flags; TYPE_1__ v; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TRANSPARENT_HUGEPAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MPOL_F_LOCAL ; 
 scalar_t__ MPOL_INTERLEAVE ; 
 scalar_t__ MPOL_PREFERRED ; 
 scalar_t__ PAGE_SHIFT ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_NORETRY ; 
 int __GFP_THISNODE ; 
 struct page* FUNC1 (int,int,int) ; 
 struct page* FUNC2 (int,int,int,int /*<<< orphan*/ *) ; 
 struct page* FUNC3 (int,int,unsigned int) ; 
 struct mempolicy* FUNC4 (struct vm_area_struct*,unsigned long) ; 
 unsigned int FUNC5 (struct mempolicy*,struct vm_area_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mempolicy*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,struct mempolicy*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int,struct mempolicy*) ; 
 scalar_t__ FUNC10 (int) ; 

struct page *
FUNC11(gfp_t gfp, int order, struct vm_area_struct *vma,
		unsigned long addr, int node, bool hugepage)
{
	struct mempolicy *pol;
	struct page *page;
	int preferred_nid;
	nodemask_t *nmask;

	pol = FUNC4(vma, addr);

	if (pol->mode == MPOL_INTERLEAVE) {
		unsigned nid;

		nid = FUNC5(pol, vma, addr, PAGE_SHIFT + order);
		FUNC6(pol);
		page = FUNC3(gfp, order, nid);
		goto out;
	}

	if (FUNC10(FUNC0(CONFIG_TRANSPARENT_HUGEPAGE) && hugepage)) {
		int hpage_node = node;

		/*
		 * For hugepage allocation and non-interleave policy which
		 * allows the current node (or other explicitly preferred
		 * node) we only try to allocate from the current/preferred
		 * node and don't fall back to other nodes, as the cost of
		 * remote accesses would likely offset THP benefits.
		 *
		 * If the policy is interleave, or does not allow the current
		 * node in its nodemask, we allocate the standard way.
		 */
		if (pol->mode == MPOL_PREFERRED && !(pol->flags & MPOL_F_LOCAL))
			hpage_node = pol->v.preferred_node;

		nmask = FUNC9(gfp, pol);
		if (!nmask || FUNC7(hpage_node, *nmask)) {
			FUNC6(pol);
			page = FUNC1(hpage_node,
						gfp | __GFP_THISNODE, order);

			/*
			 * If hugepage allocations are configured to always
			 * synchronous compact or the vma has been madvised
			 * to prefer hugepage backing, retry allowing remote
			 * memory as well.
			 */
			if (!page && (gfp & __GFP_DIRECT_RECLAIM))
				page = FUNC1(hpage_node,
						gfp | __GFP_NORETRY, order);

			goto out;
		}
	}

	nmask = FUNC9(gfp, pol);
	preferred_nid = FUNC8(gfp, pol, node);
	page = FUNC2(gfp, order, preferred_nid, nmask);
	FUNC6(pol);
out:
	return page;
}
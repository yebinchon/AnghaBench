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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mempolicy {int dummy; } ;
struct hstate {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hstate*) ; 
 int FUNC2 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,struct mempolicy**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (struct mempolicy*) ; 

__attribute__((used)) static
struct page *FUNC4(struct hstate *h,
		struct vm_area_struct *vma, unsigned long addr)
{
	struct page *page;
	struct mempolicy *mpol;
	gfp_t gfp_mask = FUNC1(h);
	int nid;
	nodemask_t *nodemask;

	nid = FUNC2(vma, addr, gfp_mask, &mpol, &nodemask);
	page = FUNC0(h, gfp_mask, nid, nodemask);
	FUNC3(mpol);

	return page;
}
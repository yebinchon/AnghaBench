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
struct hstate {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct page* FUNC1 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC3 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hstate*,struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page *FUNC7(struct hstate *h,
		gfp_t gfp_mask, int nid, nodemask_t *nmask,
		nodemask_t *node_alloc_noretry)
{
	struct page *page;

	if (FUNC2(h))
		page = FUNC1(h, gfp_mask, nid, nmask);
	else
		page = FUNC0(h, gfp_mask,
				nid, nmask, node_alloc_noretry);
	if (!page)
		return NULL;

	if (FUNC2(h))
		FUNC5(page, FUNC3(h));
	FUNC6(h, page, FUNC4(page));

	return page;
}
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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hstate*) ; 

struct page *FUNC3(struct hstate *h, gfp_t gfp_mask,
				     int nid, nodemask_t *nmask)
{
	struct page *page;

	if (FUNC2(h))
		return NULL;

	page = FUNC1(h, gfp_mask, nid, nmask, NULL);
	if (!page)
		return NULL;

	/*
	 * We do not account these pages as surplus because they are only
	 * temporary and will be released properly on the last reference
	 */
	FUNC0(page);

	return page;
}
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
struct hugepage_subpool {int count; long max_hpages; long min_hpages; long rsv_hpages; struct hstate* hstate; int /*<<< orphan*/  lock; } ;
struct hstate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct hstate*,long) ; 
 int /*<<< orphan*/  FUNC1 (struct hugepage_subpool*) ; 
 struct hugepage_subpool* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct hugepage_subpool *FUNC4(struct hstate *h, long max_hpages,
						long min_hpages)
{
	struct hugepage_subpool *spool;

	spool = FUNC2(sizeof(*spool), GFP_KERNEL);
	if (!spool)
		return NULL;

	FUNC3(&spool->lock);
	spool->count = 1;
	spool->max_hpages = max_hpages;
	spool->hstate = h;
	spool->min_hpages = min_hpages;

	if (min_hpages != -1 && FUNC0(h, min_hpages)) {
		FUNC1(spool);
		return NULL;
	}
	spool->rsv_hpages = min_hpages;

	return spool;
}
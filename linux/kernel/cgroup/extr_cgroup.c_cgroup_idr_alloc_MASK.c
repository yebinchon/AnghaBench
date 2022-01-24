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
struct idr {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_DIRECT_RECLAIM ; 
 int /*<<< orphan*/  cgroup_idr_lock ; 
 int FUNC0 (struct idr*,void*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct idr *idr, void *ptr, int start, int end,
			    gfp_t gfp_mask)
{
	int ret;

	FUNC1(gfp_mask);
	FUNC3(&cgroup_idr_lock);
	ret = FUNC0(idr, ptr, start, end, gfp_mask & ~__GFP_DIRECT_RECLAIM);
	FUNC4(&cgroup_idr_lock);
	FUNC2();
	return ret;
}
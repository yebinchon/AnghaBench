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
typedef  int u32 ;
struct idr {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int INT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct idr*,void*,int*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct idr *idr, void *ptr, int start, int end, gfp_t gfp)
{
	u32 id = start;
	int ret;

	if (FUNC0(start < 0))
		return -EINVAL;

	ret = FUNC1(idr, ptr, &id, end > 0 ? end - 1 : INT_MAX, gfp);
	if (ret)
		return ret;

	return id;
}
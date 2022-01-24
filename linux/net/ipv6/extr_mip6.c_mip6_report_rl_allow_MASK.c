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
struct in6_addr {int dummy; } ;
typedef  scalar_t__ ktime_t ;
struct TYPE_2__ {scalar_t__ stamp; int iif; int /*<<< orphan*/  lock; struct in6_addr dst; struct in6_addr src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,struct in6_addr const*) ; 
 TYPE_1__ mip6_report_rl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(ktime_t stamp,
				       const struct in6_addr *dst,
				       const struct in6_addr *src, int iif)
{
	int allow = 0;

	FUNC1(&mip6_report_rl.lock);
	if (mip6_report_rl.stamp != stamp ||
	    mip6_report_rl.iif != iif ||
	    !FUNC0(&mip6_report_rl.src, src) ||
	    !FUNC0(&mip6_report_rl.dst, dst)) {
		mip6_report_rl.stamp = stamp;
		mip6_report_rl.iif = iif;
		mip6_report_rl.src = *src;
		mip6_report_rl.dst = *dst;
		allow = 1;
	}
	FUNC2(&mip6_report_rl.lock);
	return allow;
}
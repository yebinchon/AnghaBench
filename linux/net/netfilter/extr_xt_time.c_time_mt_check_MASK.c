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
struct xt_time_info {scalar_t__ daytime_start; scalar_t__ daytime_stop; int flags; } ;
struct xt_mtchk_param {struct xt_time_info* matchinfo; } ;

/* Variables and functions */
 int EDOM ; 
 int EINVAL ; 
 int XT_TIME_ALL_FLAGS ; 
 int XT_TIME_CONTIGUOUS ; 
 scalar_t__ XT_TIME_MAX_DAYTIME ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int FUNC1(const struct xt_mtchk_param *par)
{
	const struct xt_time_info *info = par->matchinfo;

	if (info->daytime_start > XT_TIME_MAX_DAYTIME ||
	    info->daytime_stop > XT_TIME_MAX_DAYTIME) {
		FUNC0("invalid argument - start or stop time greater than 23:59:59\n");
		return -EDOM;
	}

	if (info->flags & ~XT_TIME_ALL_FLAGS) {
		FUNC0("unknown flags 0x%x\n",
				    info->flags & ~XT_TIME_ALL_FLAGS);
		return -EINVAL;
	}

	if ((info->flags & XT_TIME_CONTIGUOUS) &&
	     info->daytime_start < info->daytime_stop)
		return -EINVAL;

	return 0;
}
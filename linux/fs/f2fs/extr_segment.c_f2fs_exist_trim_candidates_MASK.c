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
struct f2fs_sb_info {int dummy; } ;
struct cp_control {int /*<<< orphan*/  trim_start; int /*<<< orphan*/  trim_end; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  sentry_lock; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*,struct cp_control*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(struct f2fs_sb_info *sbi,
						struct cp_control *cpc)
{
	__u64 trim_start = cpc->trim_start;
	bool has_candidate = false;

	FUNC2(&FUNC0(sbi)->sentry_lock);
	for (; cpc->trim_start <= cpc->trim_end; cpc->trim_start++) {
		if (FUNC1(sbi, cpc, true)) {
			has_candidate = true;
			break;
		}
	}
	FUNC3(&FUNC0(sbi)->sentry_lock);

	cpc->trim_start = trim_start;
	return has_candidate;
}
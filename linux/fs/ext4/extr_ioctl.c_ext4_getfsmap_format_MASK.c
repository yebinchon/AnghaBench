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
struct getfsmap_info {int /*<<< orphan*/  gi_idx; TYPE_1__* gi_data; int /*<<< orphan*/  gi_sb; int /*<<< orphan*/  gi_last_flags; } ;
struct fsmap {int dummy; } ;
struct ext4_fsmap {int /*<<< orphan*/  fmr_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fmh_recs; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct fsmap*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fsmap*,struct ext4_fsmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ext4_fsmap*) ; 

__attribute__((used)) static int FUNC3(struct ext4_fsmap *xfm, void *priv)
{
	struct getfsmap_info *info = priv;
	struct fsmap fm;

	FUNC2(info->gi_sb, xfm);

	info->gi_last_flags = xfm->fmr_flags;
	FUNC1(info->gi_sb, &fm, xfm);
	if (FUNC0(&info->gi_data->fmh_recs[info->gi_idx++], &fm,
			sizeof(struct fsmap)))
		return -EFAULT;

	return 0;
}
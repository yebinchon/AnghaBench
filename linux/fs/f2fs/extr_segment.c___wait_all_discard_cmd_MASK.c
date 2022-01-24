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
struct f2fs_sb_info {int dummy; } ;
struct discard_policy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPOLICY_FSTRIM ; 
 int /*<<< orphan*/  DPOLICY_UMOUNT ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,struct discard_policy*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (struct f2fs_sb_info*,struct discard_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct f2fs_sb_info *sbi,
						struct discard_policy *dpolicy)
{
	struct discard_policy dp;
	unsigned int discard_blks;

	if (dpolicy)
		return FUNC1(sbi, dpolicy, 0, UINT_MAX);

	/* wait all */
	FUNC0(sbi, &dp, DPOLICY_FSTRIM, 1);
	discard_blks = FUNC1(sbi, &dp, 0, UINT_MAX);
	FUNC0(sbi, &dp, DPOLICY_UMOUNT, 1);
	discard_blks += FUNC1(sbi, &dp, 0, UINT_MAX);

	return discard_blks;
}
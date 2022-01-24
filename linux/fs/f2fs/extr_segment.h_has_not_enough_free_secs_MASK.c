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

/* Variables and functions */
 int /*<<< orphan*/  F2FS_DIRTY_DENTS ; 
 int /*<<< orphan*/  F2FS_DIRTY_IMETA ; 
 int /*<<< orphan*/  F2FS_DIRTY_NODES ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 int FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC6(struct f2fs_sb_info *sbi,
					int freed, int needed)
{
	int node_secs = FUNC1(sbi, F2FS_DIRTY_NODES);
	int dent_secs = FUNC1(sbi, F2FS_DIRTY_DENTS);
	int imeta_secs = FUNC1(sbi, F2FS_DIRTY_IMETA);

	if (FUNC5(FUNC3(sbi, SBI_POR_DOING)))
		return false;

	if (FUNC0(sbi) + freed == FUNC4(sbi) + needed &&
			FUNC2(sbi))
		return false;
	return (FUNC0(sbi) + freed) <=
		(node_secs + 2 * dent_secs + imeta_secs +
		FUNC4(sbi) + needed);
}
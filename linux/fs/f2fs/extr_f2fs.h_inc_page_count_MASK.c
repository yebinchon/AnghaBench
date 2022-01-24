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
struct f2fs_sb_info {int /*<<< orphan*/ * nr_pages; } ;

/* Variables and functions */
 int F2FS_DIRTY_DENTS ; 
 int F2FS_DIRTY_IMETA ; 
 int F2FS_DIRTY_META ; 
 int F2FS_DIRTY_NODES ; 
 int F2FS_DIRTY_QDATA ; 
 int /*<<< orphan*/  SBI_IS_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct f2fs_sb_info *sbi, int count_type)
{
	FUNC0(&sbi->nr_pages[count_type]);

	if (count_type == F2FS_DIRTY_DENTS ||
			count_type == F2FS_DIRTY_NODES ||
			count_type == F2FS_DIRTY_META ||
			count_type == F2FS_DIRTY_QDATA ||
			count_type == F2FS_DIRTY_IMETA)
		FUNC1(sbi, SBI_IS_DIRTY);
}
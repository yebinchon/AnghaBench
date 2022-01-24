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
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {int next_blkoff; void* sum_blk; } ;

/* Variables and functions */
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct f2fs_summary*,int) ; 

__attribute__((used)) static void FUNC2(struct f2fs_sb_info *sbi, int type,
					struct f2fs_summary *sum)
{
	struct curseg_info *curseg = FUNC0(sbi, type);
	void *addr = curseg->sum_blk;
	addr += curseg->next_blkoff * sizeof(struct f2fs_summary);
	FUNC1(addr, sum, sizeof(struct f2fs_summary));
}
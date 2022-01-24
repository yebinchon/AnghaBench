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
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct f2fs_sb_info *sbi,
					block_t blkaddr, int type)
{
	if (!FUNC2(sbi, blkaddr, type)) {
		FUNC1(sbi, "invalid blkaddr: %u, type: %d, run fsck to fix.",
			 blkaddr, type);
		FUNC0(sbi, 1);
	}
}
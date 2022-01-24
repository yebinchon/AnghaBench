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
struct seg_entry {int /*<<< orphan*/  cur_valid_map; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int DATA_GENERIC_ENHANCE ; 
 int DATA_GENERIC_ENHANCE_READ ; 
 unsigned int FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 struct seg_entry* FUNC5 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct f2fs_sb_info *sbi, block_t blkaddr,
							int type)
{
	struct seg_entry *se;
	unsigned int segno, offset;
	bool exist;

	if (type != DATA_GENERIC_ENHANCE && type != DATA_GENERIC_ENHANCE_READ)
		return true;

	segno = FUNC1(sbi, blkaddr);
	offset = FUNC0(sbi, blkaddr);
	se = FUNC5(sbi, segno);

	exist = FUNC4(offset, se->cur_valid_map);
	if (!exist && type == DATA_GENERIC_ENHANCE) {
		FUNC3(sbi, "Inconsistent error blkaddr:%u, sit bitmap:%d",
			 blkaddr, exist);
		FUNC6(sbi, SBI_NEED_FSCK);
		FUNC2(1);
	}
	return exist;
}
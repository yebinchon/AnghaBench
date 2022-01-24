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
struct gc_inode_list {int /*<<< orphan*/  iroot; int /*<<< orphan*/  ilist; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; int /*<<< orphan*/  gc_mutex; scalar_t__ segs_per_sec; } ;

/* Variables and functions */
 int CURSEG_HOT_DATA ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FG_GC ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NR_CURSEG_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,unsigned int,struct gc_inode_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,char*,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (struct f2fs_sb_info*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct gc_inode_list*) ; 

__attribute__((used)) static int FUNC13(struct f2fs_sb_info *sbi, unsigned int start,
							unsigned int end)
{
	int type;
	unsigned int segno, next_inuse;
	int err = 0;

	/* Move out cursegs from the target range */
	for (type = CURSEG_HOT_DATA; type < NR_CURSEG_TYPE; type++)
		FUNC3(sbi, type, start, end);

	/* do GC to move out valid blocks in the range */
	for (segno = start; segno <= end; segno += sbi->segs_per_sec) {
		struct gc_inode_list gc_list = {
			.ilist = FUNC1(gc_list.ilist),
			.iroot = FUNC2(gc_list.iroot, GFP_NOFS),
		};

		FUNC10(&sbi->gc_mutex);
		FUNC4(sbi, segno, &gc_list, FG_GC);
		FUNC11(&sbi->gc_mutex);
		FUNC12(&gc_list);

		if (FUNC9(sbi, segno, true))
			return -EAGAIN;
	}

	err = FUNC7(sbi->sb, 1);
	if (err)
		return err;

	next_inuse = FUNC8(FUNC0(sbi), end + 1, start);
	if (next_inuse <= end) {
		FUNC6(sbi, "segno %u should be free but still inuse!",
			 next_inuse);
		FUNC5(sbi, 1);
	}
	return err;
}
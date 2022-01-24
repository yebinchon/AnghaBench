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
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_map_blocks {int m_may_create; unsigned long long m_lblk; int m_len; int /*<<< orphan*/  m_seg_type; int /*<<< orphan*/ * m_next_extent; int /*<<< orphan*/ * m_next_pgofs; } ;
typedef  int pgoff_t ;
typedef  unsigned long long loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURSEG_COLD_DATA ; 
 int /*<<< orphan*/  F2FS_GET_BLOCK_PRE_AIO ; 
 int /*<<< orphan*/  F2FS_GET_BLOCK_PRE_DIO ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int /*<<< orphan*/  NO_CHECK_TYPE ; 
 unsigned long long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,unsigned long long) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct f2fs_map_blocks*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 unsigned long long FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,unsigned long long) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, loff_t offset,
					loff_t len, int mode)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct f2fs_map_blocks map = { .m_next_pgofs = NULL,
			.m_next_extent = NULL, .m_seg_type = NO_CHECK_TYPE,
			.m_may_create = true };
	pgoff_t pg_end;
	loff_t new_size = FUNC7(inode);
	loff_t off_end;
	int err;

	err = FUNC8(inode, (len + offset));
	if (err)
		return err;

	err = FUNC2(inode);
	if (err)
		return err;

	FUNC1(sbi, true);

	pg_end = ((unsigned long long)offset + len) >> PAGE_SHIFT;
	off_end = (offset + len) & (PAGE_SIZE - 1);

	map.m_lblk = ((unsigned long long)offset) >> PAGE_SHIFT;
	map.m_len = pg_end - map.m_lblk;
	if (off_end)
		map.m_len++;

	if (FUNC4(inode))
		map.m_seg_type = CURSEG_COLD_DATA;

	err = FUNC5(inode, &map, 1, (FUNC4(inode) ?
						F2FS_GET_BLOCK_PRE_DIO :
						F2FS_GET_BLOCK_PRE_AIO));
	if (err) {
		pgoff_t last_off;

		if (!map.m_len)
			return err;

		last_off = map.m_lblk + map.m_len - 1;

		/* update new size to the failed position */
		new_size = (last_off == pg_end) ? offset + len :
					(loff_t)(last_off + 1) << PAGE_SHIFT;
	} else {
		new_size = ((loff_t)pg_end << PAGE_SHIFT) + off_end;
	}

	if (new_size > FUNC7(inode)) {
		if (mode & FALLOC_FL_KEEP_SIZE)
			FUNC6(inode);
		else
			FUNC3(inode, new_size);
	}

	return err;
}
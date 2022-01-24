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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mmap_sem; int /*<<< orphan*/ * i_gc_rwsem; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int F2FS_BLKSIZE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct f2fs_sb_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t WRITE ; 
 int FUNC3 (struct inode*,struct inode*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*) ; 
 int FUNC10 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, loff_t offset, loff_t len)
{
	struct f2fs_sb_info *sbi = FUNC2(inode);
	pgoff_t nr, pg_start, pg_end, delta, idx;
	loff_t new_size;
	int ret = 0;

	new_size = FUNC13(inode) + len;
	ret = FUNC14(inode, new_size);
	if (ret)
		return ret;

	if (offset >= FUNC13(inode))
		return -EINVAL;

	/* insert range should be aligned to block size of f2fs. */
	if (offset & (F2FS_BLKSIZE - 1) || len & (F2FS_BLKSIZE - 1))
		return -EINVAL;

	ret = FUNC6(inode);
	if (ret)
		return ret;

	FUNC5(sbi, true);

	FUNC4(&FUNC1(inode)->i_mmap_sem);
	ret = FUNC10(inode, FUNC13(inode), true);
	FUNC16(&FUNC1(inode)->i_mmap_sem);
	if (ret)
		return ret;

	/* write out all dirty pages from offset */
	ret = FUNC12(inode->i_mapping, offset, LLONG_MAX);
	if (ret)
		return ret;

	pg_start = offset >> PAGE_SHIFT;
	pg_end = (offset + len) >> PAGE_SHIFT;
	delta = pg_end - pg_start;
	idx = FUNC0(FUNC13(inode), PAGE_SIZE);

	/* avoid gc operation during block exchange */
	FUNC4(&FUNC1(inode)->i_gc_rwsem[WRITE]);
	FUNC4(&FUNC1(inode)->i_mmap_sem);
	FUNC15(inode, offset);

	while (!ret && idx > pg_start) {
		nr = idx - pg_start;
		if (nr > delta)
			nr = delta;
		idx -= nr;

		FUNC9(sbi);
		FUNC7(inode);

		ret = FUNC3(inode, inode, idx,
					idx + delta, nr, false);
		FUNC11(sbi);
	}
	FUNC16(&FUNC1(inode)->i_mmap_sem);
	FUNC16(&FUNC1(inode)->i_gc_rwsem[WRITE]);

	/* write out all moved pages, if possible */
	FUNC4(&FUNC1(inode)->i_mmap_sem);
	FUNC12(inode->i_mapping, offset, LLONG_MAX);
	FUNC15(inode, offset);
	FUNC16(&FUNC1(inode)->i_mmap_sem);

	if (!ret)
		FUNC8(inode, new_size);
	return ret;
}
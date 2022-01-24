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
struct inode {struct address_space* i_mapping; } ;
struct f2fs_sb_info {int dummy; } ;
struct address_space {int dummy; } ;
typedef  unsigned long long pgoff_t ;
typedef  unsigned long long loff_t ;
struct TYPE_2__ {int /*<<< orphan*/ * i_gc_rwsem; int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 unsigned long long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 int FUNC6 (struct inode*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*) ; 
 int FUNC8 (struct inode*,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (struct address_space*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, loff_t offset, loff_t len)
{
	pgoff_t pg_start, pg_end;
	loff_t off_start, off_end;
	int ret;

	ret = FUNC4(inode);
	if (ret)
		return ret;

	pg_start = ((unsigned long long) offset) >> PAGE_SHIFT;
	pg_end = ((unsigned long long) offset + len) >> PAGE_SHIFT;

	off_start = offset & (PAGE_SIZE - 1);
	off_end = (offset + len) & (PAGE_SIZE - 1);

	if (pg_start == pg_end) {
		ret = FUNC8(inode, pg_start, off_start,
						off_end - off_start);
		if (ret)
			return ret;
	} else {
		if (off_start) {
			ret = FUNC8(inode, pg_start++, off_start,
						PAGE_SIZE - off_start);
			if (ret)
				return ret;
		}
		if (off_end) {
			ret = FUNC8(inode, pg_end, 0, off_end);
			if (ret)
				return ret;
		}

		if (pg_start < pg_end) {
			struct address_space *mapping = inode->i_mapping;
			loff_t blk_start, blk_end;
			struct f2fs_sb_info *sbi = FUNC1(inode);

			FUNC3(sbi, true);

			blk_start = (loff_t)pg_start << PAGE_SHIFT;
			blk_end = (loff_t)pg_end << PAGE_SHIFT;

			FUNC2(&FUNC0(inode)->i_gc_rwsem[WRITE]);
			FUNC2(&FUNC0(inode)->i_mmap_sem);

			FUNC9(mapping, blk_start,
					blk_end - 1);

			FUNC5(sbi);
			ret = FUNC6(inode, pg_start, pg_end);
			FUNC7(sbi);

			FUNC10(&FUNC0(inode)->i_mmap_sem);
			FUNC10(&FUNC0(inode)->i_gc_rwsem[WRITE]);
		}
	}

	return ret;
}
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
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/ * i_gc_rwsem; int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct f2fs_sb_info* FUNC2 (struct inode*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t WRITE ; 
 int FUNC3 (struct inode*,struct inode*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, loff_t offset, loff_t len)
{
	struct f2fs_sb_info *sbi = FUNC2(inode);
	pgoff_t nrpages = FUNC0(FUNC9(inode), PAGE_SIZE);
	pgoff_t start = offset >> PAGE_SHIFT;
	pgoff_t end = (offset + len) >> PAGE_SHIFT;
	int ret;

	FUNC5(sbi, true);

	/* avoid gc operation during block exchange */
	FUNC4(&FUNC1(inode)->i_gc_rwsem[WRITE]);
	FUNC4(&FUNC1(inode)->i_mmap_sem);

	FUNC7(sbi);
	FUNC6(inode);
	FUNC10(inode, offset);
	ret = FUNC3(inode, inode, end, start, nrpages - end, true);
	FUNC8(sbi);

	FUNC11(&FUNC1(inode)->i_mmap_sem);
	FUNC11(&FUNC1(inode)->i_gc_rwsem[WRITE]);
	return ret;
}
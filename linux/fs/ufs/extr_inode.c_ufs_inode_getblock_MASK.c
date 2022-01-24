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
typedef  scalar_t__ u64 ;
struct ufs_sb_private_info {int s_apbshift; unsigned int s_fpbshift; unsigned int s_apbmask; scalar_t__ fs_magic; scalar_t__ s_sbbase; scalar_t__ s_fpb; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __fs64 ;
typedef  int /*<<< orphan*/  __fs32 ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ UFS2_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct buffer_head* FUNC9 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct super_block*,void*) ; 
 scalar_t__ FUNC13 (struct inode*,void*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int*,struct page*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static u64
FUNC15(struct inode *inode, u64 ind_block,
		  unsigned index, sector_t new_fragment, int *err,
		  int *new, struct page *locked_page)
{
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC2(sb)->s_uspi;
	int shift = uspi->s_apbshift - uspi->s_fpbshift;
	u64 tmp = 0, goal;
	struct buffer_head *bh;
	void *p;

	if (!ind_block)
		return 0;

	bh = FUNC9(sb, ind_block + (index >> shift));
	if (FUNC14(!bh)) {
		*err = -EIO;
		return 0;
	}

	index &= uspi->s_apbmask >> uspi->s_fpbshift;
	if (uspi->fs_magic == UFS2_MAGIC)
		p = (__fs64 *)bh->b_data + index;
	else
		p = (__fs32 *)bh->b_data + index;

	tmp = FUNC12(sb, p);
	if (tmp)
		goto out;

	if (index && (uspi->fs_magic == UFS2_MAGIC ?
		      (tmp = FUNC6(sb, ((__fs64 *)bh->b_data)[index-1])) :
		      (tmp = FUNC5(sb, ((__fs32 *)bh->b_data)[index-1]))))
		goal = tmp + uspi->s_fpb;
	else
		goal = bh->b_blocknr + uspi->s_fpb;
	tmp = FUNC13(inode, p, FUNC11(new_fragment), goal,
				uspi->s_fpb, err, locked_page);
	if (!tmp)
		goto out;

	if (new)
		*new = 1;

	FUNC7(bh);
	if (FUNC0(inode))
		FUNC10(bh);
	inode->i_ctime = FUNC4(inode);
	FUNC8(inode);
out:
	FUNC3 (bh);
	FUNC1("EXIT\n");
	if (tmp)
		tmp += uspi->s_sbbase;
	return tmp;
}
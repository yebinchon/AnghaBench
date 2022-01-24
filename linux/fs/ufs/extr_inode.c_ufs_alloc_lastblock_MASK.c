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
struct ufs_sb_private_info {int s_fsize; int s_fshift; int s_fpb; } ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct page {int dummy; } ;
struct inode {int i_blkbits; struct address_space* i_mapping; struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_data; scalar_t__ b_blocknr; struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef  int sector_t ;
typedef  int loff_t ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int PAGE_SHIFT ; 
 int UFS_IND_FRAGMENT ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC9 (struct page*) ; 
 struct buffer_head* FUNC10 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int FUNC14 (int) ; 
 struct page* FUNC15 (struct address_space*,int) ; 
 int FUNC16 (struct inode*,int,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC20(struct inode *inode, loff_t size)
{
	int err = 0;
	struct super_block *sb = inode->i_sb;
	struct address_space *mapping = inode->i_mapping;
	struct ufs_sb_private_info *uspi = FUNC1(sb)->s_uspi;
	unsigned i, end;
	sector_t lastfrag;
	struct page *lastpage;
	struct buffer_head *bh;
	u64 phys64;

	lastfrag = (size + uspi->s_fsize - 1) >> uspi->s_fshift;

	if (!lastfrag)
		goto out;

	lastfrag--;

	lastpage = FUNC15(mapping, lastfrag >>
				       (PAGE_SHIFT - inode->i_blkbits));
       if (FUNC0(lastpage)) {
               err = -EIO;
               goto out;
       }

       end = lastfrag & ((1 << (PAGE_SHIFT - inode->i_blkbits)) - 1);
       bh = FUNC9(lastpage);
       for (i = 0; i < end; ++i)
               bh = bh->b_this_page;


       err = FUNC16(inode, lastfrag, bh, 1);

       if (FUNC18(err))
	       goto out_unlock;

       if (FUNC3(bh)) {
	       FUNC5(bh);
	       FUNC4(bh);
	       /*
		* we do not zeroize fragment, because of
		* if it maped to hole, it already contains zeroes
		*/
	       FUNC11(bh);
	       FUNC7(bh);
	       FUNC12(lastpage);
       }

       if (lastfrag >= UFS_IND_FRAGMENT) {
	       end = uspi->s_fpb - FUNC14(lastfrag) - 1;
	       phys64 = bh->b_blocknr + 1;
	       for (i = 0; i < end; ++i) {
		       bh = FUNC10(sb, i + phys64);
		       FUNC6(bh);
		       FUNC8(bh->b_data, 0, sb->s_blocksize);
		       FUNC11(bh);
		       FUNC7(bh);
		       FUNC19(bh);
		       FUNC13(bh);
		       FUNC2(bh);
	       }
       }
out_unlock:
       FUNC17(lastpage);
out:
       return err;
}
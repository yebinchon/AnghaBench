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
typedef  unsigned long u64 ;
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct TYPE_2__ {unsigned int sb_bsize; unsigned long sb_bsize_shift; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; struct inode i_inode; } ;
struct buffer_head {int /*<<< orphan*/  b_size; struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct gfs2_sbd* FUNC0 (struct inode*) ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (struct address_space*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,unsigned long,struct buffer_head*,int) ; 
 scalar_t__ FUNC9 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 void* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC15 (void*,void*,unsigned int) ; 
 struct buffer_head* FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct gfs2_inode *ip, unsigned long index,
				  unsigned off, void *buf, unsigned bytes)
{
	struct inode *inode = &ip->i_inode;
	struct gfs2_sbd *sdp = FUNC0(inode);
	struct address_space *mapping = inode->i_mapping;
	struct page *page;
	struct buffer_head *bh;
	void *kaddr;
	u64 blk;
	unsigned bsize = sdp->sd_sb.sb_bsize, bnum = 0, boff = 0;
	unsigned to_write = bytes, pg_off = off;
	int done = 0;

	blk = index << (PAGE_SHIFT - sdp->sd_sb.sb_bsize_shift);
	boff = off % bsize;

	page = FUNC6(mapping, index, GFP_NOFS);
	if (!page)
		return -ENOMEM;
	if (!FUNC17(page))
		FUNC5(page, bsize, 0);

	bh = FUNC16(page);
	while (!done) {
		/* Find the beginning block within the page */
		if (pg_off >= ((bnum * bsize) + bsize)) {
			bh = bh->b_this_page;
			bnum++;
			blk++;
			continue;
		}
		if (!FUNC2(bh)) {
			FUNC8(inode, blk, bh, 1);
			if (!FUNC2(bh))
				goto unlock_out;
			/* If it's a newly allocated disk block, zero it */
			if (FUNC3(bh))
				FUNC22(page, bnum * bsize, bh->b_size);
		}
		if (FUNC1(page))
			FUNC19(bh);
		if (!FUNC4(bh)) {
			FUNC14(REQ_OP_READ, REQ_META | REQ_PRIO, 1, &bh);
			FUNC21(bh);
			if (!FUNC4(bh))
				goto unlock_out;
		}
		if (FUNC9(ip))
			FUNC11(ip->i_gl, bh);
		else
			FUNC10(ip);

		/* If we need to write to the next block as well */
		if (to_write > (bsize - boff)) {
			pg_off += (bsize - boff);
			to_write -= (bsize - boff);
			boff = pg_off % bsize;
			continue;
		}
		done = 1;
	}

	/* Write to the page, now that we have setup the buffer(s) */
	kaddr = FUNC12(page);
	FUNC15(kaddr + off, buf, bytes);
	FUNC7(page);
	FUNC13(kaddr);
	FUNC20(page);
	FUNC18(page);

	return 0;

unlock_out:
	FUNC20(page);
	FUNC18(page);
	return -EIO;
}
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
typedef  scalar_t__ u64 ;
struct page {scalar_t__ index; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_blkbits; int /*<<< orphan*/  i_mapping; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; struct inode i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct gfs2_inode*) ; 
 scalar_t__ FUNC7 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 void* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct buffer_head* FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 

__attribute__((used)) static int FUNC22(struct gfs2_inode *ip, struct buffer_head *dibh,
			       u64 block, struct page *page)
{
	struct inode *inode = &ip->i_inode;
	struct buffer_head *bh;
	int release = 0;

	if (!page || page->index) {
		page = FUNC5(inode->i_mapping, 0, GFP_NOFS);
		if (!page)
			return -ENOMEM;
		release = 1;
	}

	if (!FUNC1(page)) {
		void *kaddr = FUNC11(page);
		u64 dsize = FUNC10(inode);
 
		if (dsize > FUNC7(ip))
			dsize = FUNC7(ip);

		FUNC15(kaddr, dibh->b_data + sizeof(struct gfs2_dinode), dsize);
		FUNC16(kaddr + dsize, 0, PAGE_SIZE - dsize);
		FUNC12(page);

		FUNC2(page);
	}

	if (!FUNC18(page))
		FUNC4(page, FUNC0(inode->i_blkbits),
				     FUNC0(BH_Uptodate));

	bh = FUNC17(page);

	if (!FUNC3(bh))
		FUNC13(bh, inode->i_sb, block);

	FUNC20(bh);
	if (FUNC6(ip))
		FUNC9(ip->i_gl, bh);
	else {
		FUNC14(bh);
		FUNC8(ip);
	}

	if (release) {
		FUNC21(page);
		FUNC19(page);
	}

	return 0;
}
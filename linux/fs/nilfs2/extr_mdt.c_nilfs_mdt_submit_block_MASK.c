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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; } ;
struct buffer_head {int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_end_io; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  i_bmap; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int ENOMEM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int REQ_RAHEAD ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned long,scalar_t__*) ; 
 struct buffer_head* FUNC7 (struct inode*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct inode *inode, unsigned long blkoff,
		       int mode, int mode_flags, struct buffer_head **out_bh)
{
	struct buffer_head *bh;
	__u64 blknum = 0;
	int ret = -ENOMEM;

	bh = FUNC7(inode, inode->i_mapping, blkoff, 0);
	if (FUNC12(!bh))
		goto failed;

	ret = -EEXIST; /* internal code */
	if (FUNC2(bh))
		goto out;

	if (mode_flags & REQ_RAHEAD) {
		if (!FUNC11(bh)) {
			ret = -EBUSY;
			goto failed_bh;
		}
	} else /* mode == READ */
		FUNC4(bh);

	if (FUNC2(bh)) {
		FUNC13(bh);
		goto out;
	}

	ret = FUNC6(FUNC0(inode)->i_bmap, blkoff, &blknum);
	if (FUNC12(ret)) {
		FUNC13(bh);
		goto failed_bh;
	}
	FUNC5(bh, inode->i_sb, (sector_t)blknum);

	bh->b_end_io = end_buffer_read_sync;
	FUNC3(bh);
	FUNC9(mode, mode_flags, bh);
	ret = 0;

	FUNC10(inode, inode->i_ino, blkoff, mode);
 out:
	FUNC3(bh);
	*out_bh = bh;

 failed_bh:
	FUNC14(bh->b_page);
	FUNC8(bh->b_page);
	FUNC1(bh);
 failed:
	return ret;
}
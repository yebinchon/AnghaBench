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
struct the_nilfs {int /*<<< orphan*/  ns_dat; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mapping; } ;
struct buffer_head {int /*<<< orphan*/  b_page; scalar_t__ b_blocknr; int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_bdev; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  s_bdev; struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 struct buffer_head* FUNC6 (struct inode*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct inode *inode, sector_t blkoff,
				   sector_t pbn, __u64 vbn,
				   struct buffer_head **out_bh)
{
	struct buffer_head *bh;
	int err;

	bh = FUNC6(inode, inode->i_mapping, blkoff, 0);
	if (FUNC10(!bh))
		return -ENOMEM;

	if (FUNC2(bh))
		goto out;

	if (pbn == 0) {
		struct the_nilfs *nilfs = inode->i_sb->s_fs_info;

		err = FUNC5(nilfs->ns_dat, vbn, &pbn);
		if (FUNC10(err)) { /* -EIO, -ENOMEM, -ENOENT */
			FUNC0(bh);
			goto failed;
		}
	}

	FUNC4(bh);
	if (FUNC2(bh)) {
		FUNC11(bh);
		goto out;
	}

	if (!FUNC1(bh)) {
		bh->b_bdev = inode->i_sb->s_bdev;
		FUNC8(bh);
	}
	bh->b_blocknr = pbn;
	bh->b_end_io = end_buffer_read_sync;
	FUNC3(bh);
	FUNC9(REQ_OP_READ, 0, bh);
	if (vbn)
		bh->b_blocknr = vbn;
 out:
	err = 0;
	*out_bh = bh;

 failed:
	FUNC12(bh->b_page);
	FUNC7(bh->b_page);
	return err;
}
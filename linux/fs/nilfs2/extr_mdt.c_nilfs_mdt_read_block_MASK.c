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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int NILFS_MDT_MAX_RA_BLOCKS ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_RAHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct inode*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, unsigned long block,
				int readahead, struct buffer_head **out_bh)
{
	struct buffer_head *first_bh, *bh;
	unsigned long blkoff;
	int i, nr_ra_blocks = NILFS_MDT_MAX_RA_BLOCKS;
	int err;

	err = FUNC4(inode, block, REQ_OP_READ, 0, &first_bh);
	if (err == -EEXIST) /* internal code */
		goto out;

	if (FUNC6(err))
		goto failed;

	if (readahead) {
		blkoff = block + 1;
		for (i = 0; i < nr_ra_blocks; i++, blkoff++) {
			err = FUNC4(inode, blkoff, REQ_OP_READ,
						     REQ_RAHEAD, &bh);
			if (FUNC3(!err || err == -EEXIST))
				FUNC0(bh);
			else if (err != -EBUSY)
				break;
				/* abort readahead if bmap lookup failed */
			if (!FUNC1(first_bh))
				goto out_no_wait;
		}
	}

	FUNC7(first_bh);

 out_no_wait:
	err = -EIO;
	if (!FUNC2(first_bh)) {
		FUNC5(inode->i_sb, KERN_ERR,
			  "I/O error reading meta-data file (ino=%lu, block-offset=%lu)",
			  inode->i_ino, block);
		goto failed_bh;
	}
 out:
	*out_bh = first_bh;
	return 0;

 failed_bh:
	FUNC0(first_bh);
 failed:
	return err;
}
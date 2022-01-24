#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
struct TYPE_5__ {unsigned int sb_bsize_shift; int sb_bsize; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_rindex; TYPE_1__ sd_sb; } ;
struct TYPE_6__ {unsigned int i_blkbits; } ;
struct gfs2_inode {TYPE_2__ i_inode; } ;
struct buffer_head {unsigned int b_size; scalar_t__ b_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_inode* FUNC1 (int /*<<< orphan*/ ) ; 
 struct gfs2_sbd* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 scalar_t__ FUNC6 (struct gfs2_inode*) ; 
 unsigned int FUNC7 (struct gfs2_inode*) ; 
 int FUNC8 (TYPE_2__*) ; 

int FUNC9(struct gfs2_inode *ip, u64 offset,
			      unsigned int len)
{
	struct gfs2_sbd *sdp = FUNC2(&ip->i_inode);
	struct buffer_head bh;
	unsigned int shift;
	u64 lblock, lblock_stop, size;
	u64 end_of_file;

	if (!len)
		return 0;

	if (FUNC6(ip)) {
		if (offset + len > FUNC7(ip))
			return 1;
		return 0;
	}

	shift = sdp->sd_sb.sb_bsize_shift;
	FUNC0(FUNC5(ip));
	end_of_file = (FUNC8(&ip->i_inode) + sdp->sd_sb.sb_bsize - 1) >> shift;
	lblock = offset >> shift;
	lblock_stop = (offset + len + sdp->sd_sb.sb_bsize - 1) >> shift;
	if (lblock_stop > end_of_file && ip != FUNC1(sdp->sd_rindex))
		return 1;

	size = (lblock_stop - lblock) << shift;
	do {
		bh.b_state = 0;
		bh.b_size = size;
		FUNC4(&ip->i_inode, lblock, &bh, 0);
		if (!FUNC3(&bh))
			return 1;
		size -= bh.b_size;
		lblock += (bh.b_size >> ip->i_inode.i_blkbits);
	} while(size > 0);

	return 0;
}
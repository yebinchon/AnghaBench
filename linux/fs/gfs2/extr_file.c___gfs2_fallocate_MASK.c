#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_blkbits; int const i_size; } ;
struct TYPE_3__ {int sb_bsize; int sb_bsize_shift; } ;
struct gfs2_sbd {int sd_max_rg_data; TYPE_1__ sd_sb; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_alloc_parms {unsigned int min_target; unsigned int target; int allowed; int /*<<< orphan*/  aflags; } ;
struct file {int f_flags; TYPE_2__* f_mapping; } ;
typedef  int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FALLOC_FL_KEEP_SIZE ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int O_DSYNC ; 
 int PAGE_SIZE ; 
 unsigned int RES_DINODE ; 
 unsigned int RES_QUOTA ; 
 unsigned int RES_RG_HDR ; 
 unsigned int RES_STATFS ; 
 int UINT_MAX ; 
 int __O_SYNC ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*,int*,unsigned int*,unsigned int*,int) ; 
 int FUNC4 (struct inode*,int,int,int) ; 
 struct inode* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 
 int FUNC8 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC9 (struct gfs2_inode*) ; 
 int FUNC10 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_inode*) ; 
 unsigned int FUNC12 (struct gfs2_inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct file*,int,int) ; 
 int FUNC14 (struct gfs2_sbd*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_inode*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_inode*,int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int const) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 long FUNC20 (struct file*,int const,int const,int) ; 

__attribute__((used)) static long FUNC21(struct file *file, int mode, loff_t offset, loff_t len)
{
	struct inode *inode = FUNC5(file);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_alloc_parms ap = { .aflags = 0, };
	unsigned int data_blocks = 0, ind_blocks = 0, rblocks;
	loff_t bytes, max_bytes, max_blks;
	int error;
	const loff_t pos = offset;
	const loff_t count = len;
	loff_t bsize_mask = ~((loff_t)sdp->sd_sb.sb_bsize - 1);
	loff_t next = (offset + len - 1) >> sdp->sd_sb.sb_bsize_shift;
	loff_t max_chunk_size = UINT_MAX & bsize_mask;

	next = (next + 1) << sdp->sd_sb.sb_bsize_shift;

	offset &= bsize_mask;

	len = next - offset;
	bytes = sdp->sd_max_rg_data * sdp->sd_sb.sb_bsize / 2;
	if (!bytes)
		bytes = UINT_MAX;
	bytes &= bsize_mask;
	if (bytes == 0)
		bytes = sdp->sd_sb.sb_bsize;

	FUNC13(file, offset, len);

	FUNC17(ip, PAGE_SIZE, &data_blocks, &ind_blocks);
	ap.min_target = data_blocks + ind_blocks;

	while (len > 0) {
		if (len < bytes)
			bytes = len;
		if (!FUNC16(ip, offset, bytes)) {
			len -= bytes;
			offset += bytes;
			continue;
		}

		/* We need to determine how many bytes we can actually
		 * fallocate without exceeding quota or going over the
		 * end of the fs. We start off optimistically by assuming
		 * we can write max_bytes */
		max_bytes = (len > max_chunk_size) ? max_chunk_size : len;

		/* Since max_bytes is most likely a theoretical max, we
		 * calculate a more realistic 'bytes' to serve as a good
		 * starting point for the number of bytes we may be able
		 * to write */
		FUNC17(ip, bytes, &data_blocks, &ind_blocks);
		ap.target = data_blocks + ind_blocks;

		error = FUNC10(ip, &ap);
		if (error)
			return error;
		/* ap.allowed tells us how many blocks quota will allow
		 * us to write. Check if this reduces max_blks */
		max_blks = UINT_MAX;
		if (ap.allowed)
			max_blks = ap.allowed;

		error = FUNC8(ip, &ap);
		if (error)
			goto out_qunlock;

		/* check if the selected rgrp limits our max_blks further */
		if (ap.allowed && ap.allowed < max_blks)
			max_blks = ap.allowed;

		/* Almost done. Calculate bytes that can be written using
		 * max_blks. We also recompute max_bytes, data_blocks and
		 * ind_blocks */
		FUNC3(ip, &max_bytes, &data_blocks,
				&ind_blocks, max_blks);

		rblocks = RES_DINODE + ind_blocks + RES_STATFS + RES_QUOTA +
			  RES_RG_HDR + FUNC12(ip, data_blocks + ind_blocks);
		if (FUNC9(ip))
			rblocks += data_blocks ? data_blocks : 1;

		error = FUNC14(sdp, rblocks,
					 PAGE_SIZE >> inode->i_blkbits);
		if (error)
			goto out_trans_fail;

		error = FUNC4(inode, offset, max_bytes, mode);
		FUNC15(sdp);

		if (error)
			goto out_trans_fail;

		len -= max_bytes;
		offset += max_bytes;
		FUNC7(ip);
		FUNC11(ip);
	}

	if (!(mode & FALLOC_FL_KEEP_SIZE) && (pos + count) > inode->i_size)
		FUNC18(inode, pos + count);
	FUNC6(file);
	FUNC19(inode);

	if ((file->f_flags & O_DSYNC) || FUNC2(file->f_mapping->host))
		return FUNC20(file, pos, pos + count - 1,
			       (file->f_flags & __O_SYNC) ? 0 : 1);
	return 0;

out_trans_fail:
	FUNC7(ip);
out_qunlock:
	FUNC11(ip);
	return error;
}
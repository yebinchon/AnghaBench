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
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_blockcheck_stats {int /*<<< orphan*/  b_lock; } ;
struct ocfs1_vol_disk_hdr {int /*<<< orphan*/  signature; int /*<<< orphan*/  minor_version; int /*<<< orphan*/  major_version; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS1_MAJOR_VERSION ; 
 int /*<<< orphan*/  OCFS1_VOLUME_SIGNATURE ; 
 int OCFS2_MAX_BLOCKSIZE ; 
 int OCFS2_MIN_BLOCKSIZE ; 
 int /*<<< orphan*/  OCFS2_SUPER_BLOCK_BLKNO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_blockcheck_stats*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct super_block*,struct buffer_head**,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ocfs2_dinode*,struct buffer_head*,int,struct ocfs2_blockcheck_stats*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb,
			  struct buffer_head **bh,
			  int *sector_size,
			  struct ocfs2_blockcheck_stats *stats)
{
	int status, tmpstat;
	struct ocfs1_vol_disk_hdr *hdr;
	struct ocfs2_dinode *di;
	int blksize;

	*bh = NULL;

	/* may be > 512 */
	*sector_size = FUNC0(sb->s_bdev);
	if (*sector_size > OCFS2_MAX_BLOCKSIZE) {
		FUNC4(ML_ERROR, "Hardware sector size too large: %d (max=%d)\n",
		     *sector_size, OCFS2_MAX_BLOCKSIZE);
		status = -EINVAL;
		goto bail;
	}

	/* Can this really happen? */
	if (*sector_size < OCFS2_MIN_BLOCKSIZE)
		*sector_size = OCFS2_MIN_BLOCKSIZE;

	/* check block zero for old format */
	status = FUNC6(sb, bh, 0, *sector_size);
	if (status < 0) {
		FUNC5(status);
		goto bail;
	}
	hdr = (struct ocfs1_vol_disk_hdr *) (*bh)->b_data;
	if (hdr->major_version == OCFS1_MAJOR_VERSION) {
		FUNC4(ML_ERROR, "incompatible version: %u.%u\n",
		     hdr->major_version, hdr->minor_version);
		status = -EINVAL;
	}
	if (FUNC2(hdr->signature, OCFS1_VOLUME_SIGNATURE,
		   FUNC9(OCFS1_VOLUME_SIGNATURE)) == 0) {
		FUNC4(ML_ERROR, "incompatible volume signature: %8s\n",
		     hdr->signature);
		status = -EINVAL;
	}
	FUNC1(*bh);
	*bh = NULL;
	if (status < 0) {
		FUNC4(ML_ERROR, "This is an ocfs v1 filesystem which must be "
		     "upgraded before mounting with ocfs v2\n");
		goto bail;
	}

	/*
	 * Now check at magic offset for 512, 1024, 2048, 4096
	 * blocksizes.  4096 is the maximum blocksize because it is
	 * the minimum clustersize.
	 */
	status = -EINVAL;
	for (blksize = *sector_size;
	     blksize <= OCFS2_MAX_BLOCKSIZE;
	     blksize <<= 1) {
		tmpstat = FUNC6(sb, bh,
					   OCFS2_SUPER_BLOCK_BLKNO,
					   blksize);
		if (tmpstat < 0) {
			status = tmpstat;
			FUNC5(status);
			break;
		}
		di = (struct ocfs2_dinode *) (*bh)->b_data;
		FUNC3(stats, 0, sizeof(struct ocfs2_blockcheck_stats));
		FUNC8(&stats->b_lock);
		tmpstat = FUNC7(di, *bh, blksize, stats);
		if (tmpstat < 0) {
			FUNC1(*bh);
			*bh = NULL;
		}
		if (tmpstat != -EAGAIN) {
			status = tmpstat;
			break;
		}
	}

bail:
	return status;
}
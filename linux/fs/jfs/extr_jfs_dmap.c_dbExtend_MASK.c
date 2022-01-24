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
typedef  int uint ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int nbperpage; struct bmap* bmap; struct inode* ipbmap; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dmap {int dummy; } ;
struct bmap {int db_mapsize; int db_agsize; int /*<<< orphan*/  db_l2nbperpage; } ;
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int BPERDMAP ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct jfs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSIZE ; 
 int /*<<< orphan*/  RDWRLOCK_DMAP ; 
 int FUNC4 (struct bmap*,struct dmap*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct metapage* FUNC6 (struct inode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC8 (struct metapage*) ; 

__attribute__((used)) static int FUNC9(struct inode *ip, s64 blkno, s64 nblocks, s64 addnblocks)
{
	struct jfs_sb_info *sbi = FUNC3(ip->i_sb);
	s64 lblkno, lastblkno, extblkno;
	uint rel_block;
	struct metapage *mp;
	struct dmap *dp;
	int rc;
	struct inode *ipbmap = sbi->ipbmap;
	struct bmap *bmp;

	/*
	 * We don't want a non-aligned extent to cross a page boundary
	 */
	if (((rel_block = blkno & (sbi->nbperpage - 1))) &&
	    (rel_block + nblocks + addnblocks > sbi->nbperpage))
		return -ENOSPC;

	/* get the last block of the current allocation */
	lastblkno = blkno + nblocks - 1;

	/* determine the block number of the block following
	 * the existing allocation.
	 */
	extblkno = lastblkno + 1;

	FUNC1(ipbmap, RDWRLOCK_DMAP);

	/* better be within the file system */
	bmp = sbi->bmap;
	if (lastblkno < 0 || lastblkno >= bmp->db_mapsize) {
		FUNC2(ipbmap);
		FUNC5(ip->i_sb, "the block is outside the filesystem\n");
		return -EIO;
	}

	/* we'll attempt to extend the current allocation in place by
	 * allocating the additional blocks as the blocks immediately
	 * following the current allocation.  we only try to extend the
	 * current allocation in place if the number of additional blocks
	 * can fit into a dmap, the last block of the current allocation
	 * is not the last block of the file system, and the start of the
	 * inplace extension is not on an allocation group boundary.
	 */
	if (addnblocks > BPERDMAP || extblkno >= bmp->db_mapsize ||
	    (extblkno & (bmp->db_agsize - 1)) == 0) {
		FUNC2(ipbmap);
		return -ENOSPC;
	}

	/* get the buffer for the dmap containing the first block
	 * of the extension.
	 */
	lblkno = FUNC0(extblkno, bmp->db_l2nbperpage);
	mp = FUNC6(ipbmap, lblkno, PSIZE, 0);
	if (mp == NULL) {
		FUNC2(ipbmap);
		return -EIO;
	}

	dp = (struct dmap *) mp->data;

	/* try to allocate the blocks immediately following the
	 * current allocation.
	 */
	rc = FUNC4(bmp, dp, extblkno, (int) addnblocks);

	FUNC2(ipbmap);

	/* were we successful ? */
	if (rc == 0)
		FUNC8(mp);
	else
		/* we were not successful */
		FUNC7(mp);

	return (rc);
}
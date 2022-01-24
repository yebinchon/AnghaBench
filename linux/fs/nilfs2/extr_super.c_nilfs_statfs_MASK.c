#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  void* u32 ;
struct the_nilfs {unsigned long long ns_blocks_per_segment; unsigned long long ns_nsegments; unsigned long long ns_first_data_block; unsigned long ns_nrsvsegs; } ;
struct super_block {int /*<<< orphan*/  s_blocksize; TYPE_1__* s_bdev; } ;
struct nilfs_root {int /*<<< orphan*/  inodes_count; int /*<<< orphan*/  ifile; struct the_nilfs* nilfs; } ;
struct TYPE_5__ {void** val; } ;
struct kstatfs {unsigned long long f_blocks; unsigned long f_bfree; unsigned long f_bavail; int f_files; int f_ffree; TYPE_2__ f_fsid; int /*<<< orphan*/  f_namelen; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct dentry {struct super_block* d_sb; } ;
typedef  unsigned long sector_t ;
struct TYPE_6__ {struct nilfs_root* i_root; } ;
struct TYPE_4__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NILFS_NAME_LEN ; 
 int /*<<< orphan*/  NILFS_SUPER_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct the_nilfs*,unsigned long*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry, struct kstatfs *buf)
{
	struct super_block *sb = dentry->d_sb;
	struct nilfs_root *root = FUNC0(FUNC2(dentry))->i_root;
	struct the_nilfs *nilfs = root->nilfs;
	u64 id = FUNC3(sb->s_bdev->bd_dev);
	unsigned long long blocks;
	unsigned long overhead;
	unsigned long nrsvblocks;
	sector_t nfreeblocks;
	u64 nmaxinodes, nfreeinodes;
	int err;

	/*
	 * Compute all of the segment blocks
	 *
	 * The blocks before first segment and after last segment
	 * are excluded.
	 */
	blocks = nilfs->ns_blocks_per_segment * nilfs->ns_nsegments
		- nilfs->ns_first_data_block;
	nrsvblocks = nilfs->ns_nrsvsegs * nilfs->ns_blocks_per_segment;

	/*
	 * Compute the overhead
	 *
	 * When distributing meta data blocks outside segment structure,
	 * We must count them as the overhead.
	 */
	overhead = 0;

	err = FUNC4(nilfs, &nfreeblocks);
	if (FUNC7(err))
		return err;

	err = FUNC5(root->ifile,
					    &nmaxinodes, &nfreeinodes);
	if (FUNC7(err)) {
		FUNC6(sb, KERN_WARNING,
			  "failed to count free inodes: err=%d", err);
		if (err == -ERANGE) {
			/*
			 * If nilfs_palloc_count_max_entries() returns
			 * -ERANGE error code then we simply treat
			 * curent inodes count as maximum possible and
			 * zero as free inodes value.
			 */
			nmaxinodes = FUNC1(&root->inodes_count);
			nfreeinodes = 0;
			err = 0;
		} else
			return err;
	}

	buf->f_type = NILFS_SUPER_MAGIC;
	buf->f_bsize = sb->s_blocksize;
	buf->f_blocks = blocks - overhead;
	buf->f_bfree = nfreeblocks;
	buf->f_bavail = (buf->f_bfree >= nrsvblocks) ?
		(buf->f_bfree - nrsvblocks) : 0;
	buf->f_files = nmaxinodes;
	buf->f_ffree = nfreeinodes;
	buf->f_namelen = NILFS_NAME_LEN;
	buf->f_fsid.val[0] = (u32)id;
	buf->f_fsid.val[1] = (u32)(id >> 32);

	return 0;
}
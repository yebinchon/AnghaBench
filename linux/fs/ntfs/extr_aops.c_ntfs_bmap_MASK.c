#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct address_space {int /*<<< orphan*/  host; } ;
typedef  unsigned char sector_t ;
typedef  unsigned char s64 ;
struct TYPE_13__ {unsigned char cluster_size_bits; unsigned char cluster_size_mask; TYPE_4__* sb; } ;
typedef  TYPE_2__ ntfs_volume ;
struct TYPE_12__ {int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {long long mft_no; scalar_t__ type; unsigned char initialized_size; TYPE_1__ runlist; int /*<<< orphan*/  size_lock; TYPE_2__* vol; } ;
typedef  TYPE_3__ ntfs_inode ;
typedef  unsigned char loff_t ;
typedef  int /*<<< orphan*/  lcn ;
typedef  int /*<<< orphan*/  block ;
struct TYPE_15__ {unsigned long s_blocksize; unsigned char s_blocksize_bits; } ;
typedef  unsigned char LCN ;

/* Variables and functions */
 scalar_t__ AT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  LCN_ENOENT 129 
#define  LCN_ENOMEM 128 
 unsigned char LCN_HOLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC9 (TYPE_3__*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static sector_t FUNC16(struct address_space *mapping, sector_t block)
{
	s64 ofs, size;
	loff_t i_size;
	LCN lcn;
	unsigned long blocksize, flags;
	ntfs_inode *ni = FUNC5(mapping->host);
	ntfs_volume *vol = ni->vol;
	unsigned delta;
	unsigned char blocksize_bits, cluster_size_shift;

	FUNC10("Entering for mft_no 0x%lx, logical block 0x%llx.",
			ni->mft_no, (unsigned long long)block);
	if (ni->type != AT_DATA || !FUNC4(ni) || FUNC2(ni)) {
		FUNC11(vol->sb, "BMAP does not make sense for %s "
				"attributes, returning 0.",
				(ni->type != AT_DATA) ? "non-data" :
				(!FUNC4(ni) ? "resident" :
				"encrypted"));
		return 0;
	}
	/* None of these can happen. */
	FUNC0(FUNC1(ni));
	FUNC0(FUNC3(ni));
	blocksize = vol->sb->s_blocksize;
	blocksize_bits = vol->sb->s_blocksize_bits;
	ofs = (s64)block << blocksize_bits;
	FUNC12(&ni->size_lock, flags);
	size = ni->initialized_size;
	i_size = FUNC8(FUNC6(ni));
	FUNC13(&ni->size_lock, flags);
	/*
	 * If the offset is outside the initialized size or the block straddles
	 * the initialized size then pretend it is a hole unless the
	 * initialized size equals the file size.
	 */
	if (FUNC14(ofs >= size || (ofs + blocksize > size && size < i_size)))
		goto hole;
	cluster_size_shift = vol->cluster_size_bits;
	FUNC7(&ni->runlist.lock);
	lcn = FUNC9(ni, ofs >> cluster_size_shift, false);
	FUNC15(&ni->runlist.lock);
	if (FUNC14(lcn < LCN_HOLE)) {
		/*
		 * Step down to an integer to avoid gcc doing a long long
		 * comparision in the switch when we know @lcn is between
		 * LCN_HOLE and LCN_EIO (i.e. -1 to -5).
		 *
		 * Otherwise older gcc (at least on some architectures) will
		 * try to use __cmpdi2() which is of course not available in
		 * the kernel.
		 */
		switch ((int)lcn) {
		case LCN_ENOENT:
			/*
			 * If the offset is out of bounds then pretend it is a
			 * hole.
			 */
			goto hole;
		case LCN_ENOMEM:
			FUNC11(vol->sb, "Not enough memory to complete "
					"mapping for inode 0x%lx.  "
					"Returning 0.", ni->mft_no);
			break;
		default:
			FUNC11(vol->sb, "Failed to complete mapping for "
					"inode 0x%lx.  Run chkdsk.  "
					"Returning 0.", ni->mft_no);
			break;
		}
		return 0;
	}
	if (lcn < 0) {
		/* It is a hole. */
hole:
		FUNC10("Done (returning hole).");
		return 0;
	}
	/*
	 * The block is really allocated and fullfils all our criteria.
	 * Convert the cluster to units of block size and return the result.
	 */
	delta = ofs & vol->cluster_size_mask;
	if (FUNC14(sizeof(block) < sizeof(lcn))) {
		block = lcn = ((lcn << cluster_size_shift) + delta) >>
				blocksize_bits;
		/* If the block number was truncated return 0. */
		if (FUNC14(block != lcn)) {
			FUNC11(vol->sb, "Physical block 0x%llx is too "
					"large to be returned, returning 0.",
					(long long)lcn);
			return 0;
		}
	} else
		block = ((lcn << cluster_size_shift) + delta) >>
				blocksize_bits;
	FUNC10("Done (returning block 0x%llx).", (unsigned long long)lcn);
	return block;
}
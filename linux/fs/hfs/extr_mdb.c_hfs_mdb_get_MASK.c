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
typedef  char u8 ;
typedef  int u32 ;
struct super_block {int s_blocksize_bits; int s_blocksize; int /*<<< orphan*/  s_flags; } ;
struct hfs_mdb {int drSigWord; int drAtrb; int /*<<< orphan*/  drLsMod; int /*<<< orphan*/  drWrCnt; int /*<<< orphan*/  drVBMSt; int /*<<< orphan*/  drDirCnt; int /*<<< orphan*/  drFilCnt; int /*<<< orphan*/  drNmRtDirs; int /*<<< orphan*/  drNmFls; int /*<<< orphan*/  drNxtCNID; int /*<<< orphan*/  drFreeBks; int /*<<< orphan*/  drAlBlSt; int /*<<< orphan*/  drClpSiz; int /*<<< orphan*/  drNmAlBlks; int /*<<< orphan*/  drAlBlkSiz; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int sector_t ;
typedef  int loff_t ;
typedef  int __be16 ;
struct TYPE_2__ {int alloc_blksz; int part_start; int fs_ablocks; int fs_div; int clumpablks; int fs_start; int free_ablocks; int next_id; int root_files; int root_dirs; int file_count; int folder_count; struct buffer_head* mdb_bh; void* cat_tree; void* ext_tree; scalar_t__ bitmap; struct hfs_mdb* alt_mdb; struct buffer_head* alt_mdb_bh; struct hfs_mdb* mdb; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HFS_CAT_CNID ; 
 int /*<<< orphan*/  HFS_EXT_CNID ; 
 int HFS_MDB_BLK ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  HFS_SB_ATTRIB_INCNSTNT ; 
 int /*<<< orphan*/  HFS_SB_ATTRIB_SLOCK ; 
 int /*<<< orphan*/  HFS_SB_ATTRIB_UNMNT ; 
 int HFS_SECTOR_SIZE ; 
 int HFS_SECTOR_SIZE_BITS ; 
 int /*<<< orphan*/  HFS_SUPER_MAGIC ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SB_RDONLY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hfs_cat_keycmp ; 
 int /*<<< orphan*/  hfs_ext_keycmp ; 
 scalar_t__ FUNC7 (struct super_block*,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct super_block*,int*,int*) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,int) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 struct buffer_head* FUNC17 (struct super_block*,int) ; 
 struct buffer_head* FUNC18 (struct super_block*,int,struct hfs_mdb*) ; 
 int FUNC19 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 

int FUNC23(struct super_block *sb)
{
	struct buffer_head *bh;
	struct hfs_mdb *mdb, *mdb2;
	unsigned int block;
	char *ptr;
	int off2, len, size, sect;
	sector_t part_start, part_size;
	loff_t off;
	__be16 attrib;

	/* set the device driver to 512-byte blocks */
	size = FUNC19(sb, HFS_SECTOR_SIZE);
	if (!size)
		return -EINVAL;

	if (FUNC7(sb, &part_start, &part_size))
		return -EINVAL;
	while (1) {
		/* See if this is an HFS filesystem */
		bh = FUNC18(sb, part_start + HFS_MDB_BLK, mdb);
		if (!bh)
			goto out;

		if (mdb->drSigWord == FUNC5(HFS_SUPER_MAGIC))
			break;
		FUNC4(bh);

		/* check for a partition block
		 * (should do this only for cdrom/loop though)
		 */
		if (FUNC10(sb, &part_start, &part_size))
			goto out;
	}

	FUNC0(sb)->alloc_blksz = size = FUNC3(mdb->drAlBlkSiz);
	if (!size || (size & (HFS_SECTOR_SIZE - 1))) {
		FUNC15("bad allocation block size %d\n", size);
		goto out_bh;
	}

	size = FUNC14(FUNC0(sb)->alloc_blksz, (u32)PAGE_SIZE);
	/* size must be a multiple of 512 */
	while (size & (size - 1))
		size -= HFS_SECTOR_SIZE;
	sect = FUNC1(mdb->drAlBlSt) + part_start;
	/* align block size to first sector */
	while (sect & ((size - 1) >> HFS_SECTOR_SIZE_BITS))
		size >>= 1;
	/* align block size to weird alloc size */
	while (FUNC0(sb)->alloc_blksz & (size - 1))
		size >>= 1;
	FUNC4(bh);
	if (!FUNC21(sb, size)) {
		FUNC15("unable to set blocksize to %u\n", size);
		goto out;
	}

	bh = FUNC18(sb, part_start + HFS_MDB_BLK, mdb);
	if (!bh)
		goto out;
	if (mdb->drSigWord != FUNC5(HFS_SUPER_MAGIC))
		goto out_bh;

	FUNC0(sb)->mdb_bh = bh;
	FUNC0(sb)->mdb = mdb;

	/* These parameters are read from the MDB, and never written */
	FUNC0(sb)->part_start = part_start;
	FUNC0(sb)->fs_ablocks = FUNC1(mdb->drNmAlBlks);
	FUNC0(sb)->fs_div = FUNC0(sb)->alloc_blksz >> sb->s_blocksize_bits;
	FUNC0(sb)->clumpablks = FUNC3(mdb->drClpSiz) /
				 FUNC0(sb)->alloc_blksz;
	if (!FUNC0(sb)->clumpablks)
		FUNC0(sb)->clumpablks = 1;
	FUNC0(sb)->fs_start = (FUNC1(mdb->drAlBlSt) + part_start) >>
			       (sb->s_blocksize_bits - HFS_SECTOR_SIZE_BITS);

	/* These parameters are read from and written to the MDB */
	FUNC0(sb)->free_ablocks = FUNC1(mdb->drFreeBks);
	FUNC0(sb)->next_id = FUNC3(mdb->drNxtCNID);
	FUNC0(sb)->root_files = FUNC1(mdb->drNmFls);
	FUNC0(sb)->root_dirs = FUNC1(mdb->drNmRtDirs);
	FUNC0(sb)->file_count = FUNC3(mdb->drFilCnt);
	FUNC0(sb)->folder_count = FUNC3(mdb->drDirCnt);

	/* TRY to get the alternate (backup) MDB. */
	sect = part_start + part_size - 2;
	bh = FUNC18(sb, sect, mdb2);
	if (bh) {
		if (mdb2->drSigWord == FUNC5(HFS_SUPER_MAGIC)) {
			FUNC0(sb)->alt_mdb_bh = bh;
			FUNC0(sb)->alt_mdb = mdb2;
		} else
			FUNC4(bh);
	}

	if (!FUNC0(sb)->alt_mdb) {
		FUNC16("unable to locate alternate MDB\n");
		FUNC16("continuing without an alternate MDB\n");
	}

	FUNC0(sb)->bitmap = FUNC11(8192, GFP_KERNEL);
	if (!FUNC0(sb)->bitmap)
		goto out;

	/* read in the bitmap */
	block = FUNC1(mdb->drVBMSt) + part_start;
	off = (loff_t)block << HFS_SECTOR_SIZE_BITS;
	size = (FUNC0(sb)->fs_ablocks + 8) / 8;
	ptr = (u8 *)FUNC0(sb)->bitmap;
	while (size) {
		bh = FUNC17(sb, off >> sb->s_blocksize_bits);
		if (!bh) {
			FUNC15("unable to read volume bitmap\n");
			goto out;
		}
		off2 = off & (sb->s_blocksize - 1);
		len = FUNC14((int)sb->s_blocksize - off2, size);
		FUNC13(ptr, bh->b_data + off2, len);
		FUNC4(bh);
		ptr += len;
		off += len;
		size -= len;
	}

	FUNC0(sb)->ext_tree = FUNC6(sb, HFS_EXT_CNID, hfs_ext_keycmp);
	if (!FUNC0(sb)->ext_tree) {
		FUNC15("unable to open extent tree\n");
		goto out;
	}
	FUNC0(sb)->cat_tree = FUNC6(sb, HFS_CAT_CNID, hfs_cat_keycmp);
	if (!FUNC0(sb)->cat_tree) {
		FUNC15("unable to open catalog tree\n");
		goto out;
	}

	attrib = mdb->drAtrb;
	if (!(attrib & FUNC5(HFS_SB_ATTRIB_UNMNT))) {
		FUNC16("filesystem was not cleanly unmounted, running fsck.hfs is recommended.  mounting read-only.\n");
		sb->s_flags |= SB_RDONLY;
	}
	if ((attrib & FUNC5(HFS_SB_ATTRIB_SLOCK))) {
		FUNC16("filesystem is marked locked, mounting read-only.\n");
		sb->s_flags |= SB_RDONLY;
	}
	if (!FUNC20(sb)) {
		/* Mark the volume uncleanly unmounted in case we crash */
		attrib &= FUNC5(~HFS_SB_ATTRIB_UNMNT);
		attrib |= FUNC5(HFS_SB_ATTRIB_INCNSTNT);
		mdb->drAtrb = attrib;
		FUNC2(&mdb->drWrCnt, 1);
		mdb->drLsMod = FUNC9();

		FUNC12(FUNC0(sb)->mdb_bh);
		FUNC22(FUNC0(sb)->mdb_bh);
	}

	return 0;

out_bh:
	FUNC4(bh);
out:
	FUNC8(sb);
	return -EIO;
}
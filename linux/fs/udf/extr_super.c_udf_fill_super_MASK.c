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
typedef  scalar_t__ uint16_t ;
struct udf_sb_info {int s_flags; int s_session; int s_last_block; size_t s_partition; int /*<<< orphan*/ * s_lvid_bh; int /*<<< orphan*/  s_vat_inode; int /*<<< orphan*/  s_volume_ident; int /*<<< orphan*/  s_record_time; TYPE_1__* s_partmaps; int /*<<< orphan*/  s_partitions; scalar_t__ s_udfrev; int /*<<< orphan*/  s_cred_lock; int /*<<< orphan*/ * s_nls_map; void* s_dmode; void* s_fmode; scalar_t__ s_umask; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; int /*<<< orphan*/  s_alloc_mutex; } ;
struct udf_options {int flags; int session; int blocksize; int /*<<< orphan*/ * nls_map; void* dmode; void* fmode; scalar_t__ umask; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct timestamp {int /*<<< orphan*/  typeAndTimezone; int /*<<< orphan*/  minute; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  month; int /*<<< orphan*/  year; } ;
struct super_block {int s_time_gran; struct udf_sb_info* s_fs_info; int /*<<< orphan*/  s_max_links; int /*<<< orphan*/  s_maxbytes; int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_bdev; int /*<<< orphan*/  s_magic; int /*<<< orphan*/ * s_export_op; int /*<<< orphan*/ * s_op; } ;
struct logicalVolIntegrityDescImpUse {int /*<<< orphan*/  minUDFWriteRev; int /*<<< orphan*/  minUDFReadRev; } ;
struct kernel_lb_addr {int logicalBlockNum; int partitionReferenceNum; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int s_partition_flags; } ;

/* Variables and functions */
 int EACCES ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int FUNC1 (struct inode*) ; 
 int UDF_FLAG_BLOCKSIZE_SET ; 
 int UDF_FLAG_NLS_MAP ; 
 int /*<<< orphan*/  UDF_FLAG_RW_INCOMPAT ; 
 int UDF_FLAG_STRICT ; 
 int UDF_FLAG_USE_AD_IN_ICB ; 
 int /*<<< orphan*/  UDF_FLAG_USE_EXTENDED_FE ; 
 int /*<<< orphan*/  UDF_FLAG_USE_STREAMS ; 
 int UDF_FLAG_UTF8 ; 
 void* UDF_INVALID_MODE ; 
 int /*<<< orphan*/  UDF_MAX_LINKS ; 
 scalar_t__ UDF_MAX_READ_VERSION ; 
 scalar_t__ UDF_MAX_WRITE_VERSION ; 
 int UDF_PART_FLAG_READ_ONLY ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDF_SUPER_MAGIC ; 
 scalar_t__ UDF_VERS_USE_EXTENDED_FE ; 
 scalar_t__ UDF_VERS_USE_STREAMS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct udf_sb_info*) ; 
 struct udf_sb_info* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  overflowgid ; 
 int /*<<< orphan*/  overflowuid ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  udf_export_ops ; 
 int FUNC21 (struct super_block*,struct kernel_lb_addr*,struct kernel_lb_addr*) ; 
 int FUNC22 (struct super_block*) ; 
 struct inode* FUNC23 (struct super_block*,struct kernel_lb_addr*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC25 (struct super_block*,struct udf_options*,int,struct kernel_lb_addr*) ; 
 int /*<<< orphan*/  FUNC26 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC27 (char*,struct udf_options*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct super_block*) ; 
 struct logicalVolIntegrityDescImpUse* FUNC29 (struct super_block*) ; 
 int /*<<< orphan*/  udf_sb_ops ; 
 int /*<<< orphan*/  FUNC30 (struct timestamp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC33(struct super_block *sb, void *options, int silent)
{
	int ret = -EINVAL;
	struct inode *inode = NULL;
	struct udf_options uopt;
	struct kernel_lb_addr rootdir, fileset;
	struct udf_sb_info *sbi;
	bool lvid_open = false;

	uopt.flags = (1 << UDF_FLAG_USE_AD_IN_ICB) | (1 << UDF_FLAG_STRICT);
	/* By default we'll use overflow[ug]id when UDF inode [ug]id == -1 */
	uopt.uid = FUNC13(FUNC5(), overflowuid);
	uopt.gid = FUNC12(FUNC5(), overflowgid);
	uopt.umask = 0;
	uopt.fmode = UDF_INVALID_MODE;
	uopt.dmode = UDF_INVALID_MODE;
	uopt.nls_map = NULL;

	sbi = FUNC9(sizeof(*sbi), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;

	sb->s_fs_info = sbi;

	FUNC14(&sbi->s_alloc_mutex);

	if (!FUNC27((char *)options, &uopt, false))
		goto parse_options_failure;

	if (uopt.flags & (1 << UDF_FLAG_UTF8) &&
	    uopt.flags & (1 << UDF_FLAG_NLS_MAP)) {
		FUNC20(sb, "utf8 cannot be combined with iocharset\n");
		goto parse_options_failure;
	}
	if ((uopt.flags & (1 << UDF_FLAG_NLS_MAP)) && !uopt.nls_map) {
		uopt.nls_map = FUNC11();
		if (!uopt.nls_map)
			uopt.flags &= ~(1 << UDF_FLAG_NLS_MAP);
		else
			FUNC19("Using default NLS map\n");
	}
	if (!(uopt.flags & (1 << UDF_FLAG_NLS_MAP)))
		uopt.flags |= (1 << UDF_FLAG_UTF8);

	fileset.logicalBlockNum = 0xFFFFFFFF;
	fileset.partitionReferenceNum = 0xFFFF;

	sbi->s_flags = uopt.flags;
	sbi->s_uid = uopt.uid;
	sbi->s_gid = uopt.gid;
	sbi->s_umask = uopt.umask;
	sbi->s_fmode = uopt.fmode;
	sbi->s_dmode = uopt.dmode;
	sbi->s_nls_map = uopt.nls_map;
	FUNC16(&sbi->s_cred_lock);

	if (uopt.session == 0xFFFFFFFF)
		sbi->s_session = FUNC22(sb);
	else
		sbi->s_session = uopt.session;

	FUNC19("Multi-session=%d\n", sbi->s_session);

	/* Fill in the rest of the superblock */
	sb->s_op = &udf_sb_ops;
	sb->s_export_op = &udf_export_ops;

	sb->s_magic = UDF_SUPER_MAGIC;
	sb->s_time_gran = 1000;

	if (uopt.flags & (1 << UDF_FLAG_BLOCKSIZE_SET)) {
		ret = FUNC25(sb, &uopt, silent, &fileset);
	} else {
		uopt.blocksize = FUNC3(sb->s_bdev);
		while (uopt.blocksize <= 4096) {
			ret = FUNC25(sb, &uopt, silent, &fileset);
			if (ret < 0) {
				if (!silent && ret != -EACCES) {
					FUNC15("Scanning with blocksize %u failed\n",
						  uopt.blocksize);
				}
				FUNC4(sbi->s_lvid_bh);
				sbi->s_lvid_bh = NULL;
				/*
				 * EACCES is special - we want to propagate to
				 * upper layers that we cannot handle RW mount.
				 */
				if (ret == -EACCES)
					break;
			} else
				break;

			uopt.blocksize <<= 1;
		}
	}
	if (ret < 0) {
		if (ret == -EAGAIN) {
			FUNC31(sb, "No partition found (1)\n");
			ret = -EINVAL;
		}
		goto error_out;
	}

	FUNC19("Lastblock=%u\n", sbi->s_last_block);

	if (sbi->s_lvid_bh) {
		struct logicalVolIntegrityDescImpUse *lvidiu =
							FUNC29(sb);
		uint16_t minUDFReadRev;
		uint16_t minUDFWriteRev;

		if (!lvidiu) {
			ret = -EINVAL;
			goto error_out;
		}
		minUDFReadRev = FUNC10(lvidiu->minUDFReadRev);
		minUDFWriteRev = FUNC10(lvidiu->minUDFWriteRev);
		if (minUDFReadRev > UDF_MAX_READ_VERSION) {
			FUNC20(sb, "minUDFReadRev=%x (max is %x)\n",
				minUDFReadRev,
				UDF_MAX_READ_VERSION);
			ret = -EINVAL;
			goto error_out;
		} else if (minUDFWriteRev > UDF_MAX_WRITE_VERSION) {
			if (!FUNC17(sb)) {
				ret = -EACCES;
				goto error_out;
			}
			FUNC2(sb, UDF_FLAG_RW_INCOMPAT);
		}

		sbi->s_udfrev = minUDFWriteRev;

		if (minUDFReadRev >= UDF_VERS_USE_EXTENDED_FE)
			FUNC2(sb, UDF_FLAG_USE_EXTENDED_FE);
		if (minUDFReadRev >= UDF_VERS_USE_STREAMS)
			FUNC2(sb, UDF_FLAG_USE_STREAMS);
	}

	if (!sbi->s_partitions) {
		FUNC31(sb, "No partition found (2)\n");
		ret = -EINVAL;
		goto error_out;
	}

	if (sbi->s_partmaps[sbi->s_partition].s_partition_flags &
			UDF_PART_FLAG_READ_ONLY) {
		if (!FUNC17(sb)) {
			ret = -EACCES;
			goto error_out;
		}
		FUNC2(sb, UDF_FLAG_RW_INCOMPAT);
	}

	ret = FUNC21(sb, &fileset, &rootdir);
	if (ret < 0) {
		FUNC31(sb, "No fileset found\n");
		goto error_out;
	}

	if (!silent) {
		struct timestamp ts;
		FUNC30(&ts, sbi->s_record_time);
		FUNC24("Mounting volume '%s', timestamp %04u/%02u/%02u %02u:%02u (%x)\n",
			 sbi->s_volume_ident,
			 FUNC10(ts.year), ts.month, ts.day,
			 ts.hour, ts.minute, FUNC10(ts.typeAndTimezone));
	}
	if (!FUNC17(sb)) {
		FUNC26(sb);
		lvid_open = true;
	}

	/* Assign the root inode */
	/* assign inodes by physical block number */
	/* perhaps it's not extensible enough, but for now ... */
	inode = FUNC23(sb, &rootdir);
	if (FUNC0(inode)) {
		FUNC20(sb, "Error in udf_iget, block=%u, partition=%u\n",
		       rootdir.logicalBlockNum, rootdir.partitionReferenceNum);
		ret = FUNC1(inode);
		goto error_out;
	}

	/* Allocate a dentry for the root inode */
	sb->s_root = FUNC6(inode);
	if (!sb->s_root) {
		FUNC20(sb, "Couldn't allocate root dentry\n");
		ret = -ENOMEM;
		goto error_out;
	}
	sb->s_maxbytes = MAX_LFS_FILESIZE;
	sb->s_max_links = UDF_MAX_LINKS;
	return 0;

error_out:
	FUNC7(sbi->s_vat_inode);
parse_options_failure:
	if (uopt.nls_map)
		FUNC32(uopt.nls_map);
	if (lvid_open)
		FUNC18(sb);
	FUNC4(sbi->s_lvid_bh);
	FUNC28(sb);
	FUNC8(sbi);
	sb->s_fs_info = NULL;

	return ret;
}
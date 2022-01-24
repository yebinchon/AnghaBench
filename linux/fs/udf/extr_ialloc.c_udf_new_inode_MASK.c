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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  udf_pblk_t ;
struct udf_sb_info {scalar_t__ s_udfrev; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; int /*<<< orphan*/  s_alloc_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct TYPE_3__ {void* i_data; } ;
struct udf_inode_info {int i_efe; int i_checkpoint; int /*<<< orphan*/  i_crtime; int /*<<< orphan*/  i_alloc_type; int /*<<< orphan*/  i_extraPerms; scalar_t__ i_use; scalar_t__ i_lenAlloc; scalar_t__ i_lenEAttr; TYPE_2__ i_location; int /*<<< orphan*/  i_unique; TYPE_1__ i_ext; } ;
struct super_block {scalar_t__ s_blocksize; } ;
struct logicalVolIntegrityDescImpUse {int /*<<< orphan*/  numFiles; int /*<<< orphan*/  numDirs; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; struct super_block* i_sb; scalar_t__ i_blocks; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_generation; } ;
struct fileEntry {int dummy; } ;
struct extendedFileEntry {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  FE_PERM_U_CHATTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICBTAG_FLAG_AD_IN_ICB ; 
 int /*<<< orphan*/  ICBTAG_FLAG_AD_LONG ; 
 int /*<<< orphan*/  ICBTAG_FLAG_AD_SHORT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDF_FLAG_GID_SET ; 
 int /*<<< orphan*/  UDF_FLAG_UID_SET ; 
 int /*<<< orphan*/  UDF_FLAG_USE_AD_IN_ICB ; 
 int /*<<< orphan*/  UDF_FLAG_USE_EXTENDED_FE ; 
 int /*<<< orphan*/  UDF_FLAG_USE_SHORT_AD ; 
 struct udf_inode_info* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct udf_sb_info* FUNC4 (struct super_block*) ; 
 scalar_t__ UDF_VERS_USE_EXTENDED_FE ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 void* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC16 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct logicalVolIntegrityDescImpUse* FUNC19 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*) ; 
 scalar_t__ FUNC22 (int) ; 

struct inode *FUNC23(struct inode *dir, umode_t mode)
{
	struct super_block *sb = dir->i_sb;
	struct udf_sb_info *sbi = FUNC4(sb);
	struct inode *inode;
	udf_pblk_t block;
	uint32_t start = FUNC2(dir)->i_location.logicalBlockNum;
	struct udf_inode_info *iinfo;
	struct udf_inode_info *dinfo = FUNC2(dir);
	struct logicalVolIntegrityDescImpUse *lvidiu;
	int err;

	inode = FUNC16(sb);

	if (!inode)
		return FUNC0(-ENOMEM);

	iinfo = FUNC2(inode);
	if (FUNC3(inode->i_sb, UDF_FLAG_USE_EXTENDED_FE)) {
		iinfo->i_efe = 1;
		if (UDF_VERS_USE_EXTENDED_FE > sbi->s_udfrev)
			sbi->s_udfrev = UDF_VERS_USE_EXTENDED_FE;
		iinfo->i_ext.i_data = FUNC9(inode->i_sb->s_blocksize -
					    sizeof(struct extendedFileEntry),
					    GFP_KERNEL);
	} else {
		iinfo->i_efe = 0;
		iinfo->i_ext.i_data = FUNC9(inode->i_sb->s_blocksize -
					    sizeof(struct fileEntry),
					    GFP_KERNEL);
	}
	if (!iinfo->i_ext.i_data) {
		FUNC8(inode);
		return FUNC0(-ENOMEM);
	}

	err = -ENOSPC;
	block = FUNC18(dir->i_sb, NULL,
			      dinfo->i_location.partitionReferenceNum,
			      start, &err);
	if (err) {
		FUNC8(inode);
		return FUNC0(err);
	}

	lvidiu = FUNC19(sb);
	if (lvidiu) {
		iinfo->i_unique = FUNC11(sb);
		inode->i_generation = iinfo->i_unique;
		FUNC14(&sbi->s_alloc_mutex);
		if (FUNC1(mode))
			FUNC10(&lvidiu->numDirs, 1);
		else
			FUNC10(&lvidiu->numFiles, 1);
		FUNC21(sb);
		FUNC15(&sbi->s_alloc_mutex);
	}

	FUNC6(inode, dir, mode);
	if (FUNC3(sb, UDF_FLAG_UID_SET))
		inode->i_uid = sbi->s_uid;
	if (FUNC3(sb, UDF_FLAG_GID_SET))
		inode->i_gid = sbi->s_gid;

	iinfo->i_location.logicalBlockNum = block;
	iinfo->i_location.partitionReferenceNum =
				dinfo->i_location.partitionReferenceNum;
	inode->i_ino = FUNC17(sb, &iinfo->i_location, 0);
	inode->i_blocks = 0;
	iinfo->i_lenEAttr = 0;
	iinfo->i_lenAlloc = 0;
	iinfo->i_use = 0;
	iinfo->i_checkpoint = 1;
	iinfo->i_extraPerms = FE_PERM_U_CHATTR;
	FUNC20(inode, mode);

	if (FUNC3(inode->i_sb, UDF_FLAG_USE_AD_IN_ICB))
		iinfo->i_alloc_type = ICBTAG_FLAG_AD_IN_ICB;
	else if (FUNC3(inode->i_sb, UDF_FLAG_USE_SHORT_AD))
		iinfo->i_alloc_type = ICBTAG_FLAG_AD_SHORT;
	else
		iinfo->i_alloc_type = ICBTAG_FLAG_AD_LONG;
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC5(inode);
	iinfo->i_crtime = inode->i_mtime;
	if (FUNC22(FUNC7(inode) < 0)) {
		FUNC12(inode);
		FUNC8(inode);
		return FUNC0(-EIO);
	}
	FUNC13(inode);

	return inode;
}
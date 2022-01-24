#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_12__ {void* tagIdent; } ;
struct unallocSpaceEntry {TYPE_1__ descTag; void* lengthAllocDescs; } ;
struct udf_sb_info {int s_udfrev; int s_serial_number; } ;
struct TYPE_18__ {int logicalBlockNum; } ;
struct TYPE_13__ {int /*<<< orphan*/  i_data; } ;
struct udf_inode_info {int i_lenAlloc; int i_extraPerms; int i_alloc_type; scalar_t__ i_efe; int i_unique; int i_lenEAttr; int i_checkpoint; int i_lenStreams; TYPE_9__ i_location; scalar_t__ i_use; scalar_t__ i_strat4096; int /*<<< orphan*/  i_crtime; int /*<<< orphan*/  i_locStreamdir; scalar_t__ i_streamdir; TYPE_2__ i_ext; } ;
struct tag {int dummy; } ;
struct regid {void** identSuffix; int /*<<< orphan*/  ident; } ;
struct long_ad {void* extLength; int /*<<< orphan*/  extLocation; } ;
struct inode {int i_mode; scalar_t__ i_nlink; int i_size; int i_blocks; int /*<<< orphan*/  i_ino; TYPE_5__* i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; } ;
struct TYPE_17__ {int /*<<< orphan*/  tagChecksum; void* descCRC; void* descCRCLength; void* tagLocation; void* tagSerialNum; void* descVersion; void* tagIdent; } ;
struct TYPE_15__ {void* flags; int /*<<< orphan*/  fileType; void* numEntries; void* strategyType; void* strategyParameter; } ;
struct fileEntry {TYPE_7__ descTag; TYPE_4__ icbTag; void* checkpoint; void* lengthAllocDescs; void* lengthExtendedAttr; void* uniqueID; struct regid impIdent; int /*<<< orphan*/  attrTime; int /*<<< orphan*/  modificationTime; int /*<<< orphan*/  accessTime; void* logicalBlocksRecorded; void* informationLength; void* fileLinkCount; void* permissions; void* gid; void* uid; } ;
struct TYPE_14__ {void* tagIdent; } ;
struct extendedFileEntry {TYPE_3__ descTag; void* checkpoint; void* lengthAllocDescs; void* lengthExtendedAttr; void* uniqueID; struct regid impIdent; int /*<<< orphan*/  attrTime; int /*<<< orphan*/  createTime; int /*<<< orphan*/  modificationTime; int /*<<< orphan*/  accessTime; struct long_ad streamDirectoryICB; void* logicalBlocksRecorded; void* objectSize; } ;
struct deviceSpec {int attrSubtype; void* minorDeviceIdent; void* majorDeviceIdent; scalar_t__ impUse; void* impUseLength; void* attrLength; void* attrType; } ;
struct buffer_head {struct regid* b_data; } ;
struct TYPE_16__ {unsigned char s_blocksize_bits; int s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ICBTAG_FILE_TYPE_BLOCK ; 
 int /*<<< orphan*/  ICBTAG_FILE_TYPE_CHAR ; 
 int /*<<< orphan*/  ICBTAG_FILE_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  ICBTAG_FILE_TYPE_FIFO ; 
 int /*<<< orphan*/  ICBTAG_FILE_TYPE_REGULAR ; 
 int /*<<< orphan*/  ICBTAG_FILE_TYPE_SOCKET ; 
 int /*<<< orphan*/  ICBTAG_FILE_TYPE_SYMLINK ; 
 int /*<<< orphan*/  ICBTAG_FILE_TYPE_USE ; 
 int ICBTAG_FLAG_AD_IN_ICB ; 
 int ICBTAG_FLAG_AD_MASK ; 
 int ICBTAG_FLAG_SETGID ; 
 int ICBTAG_FLAG_SETUID ; 
 int ICBTAG_FLAG_STICKY ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int S_ISGID ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int S_ISUID ; 
 int S_ISVTX ; 
 int TAG_IDENT_EFE ; 
 int TAG_IDENT_FE ; 
 int TAG_IDENT_USE ; 
 int /*<<< orphan*/  UDF_FLAG_GID_FORGET ; 
 int /*<<< orphan*/  UDF_FLAG_UID_FORGET ; 
 struct udf_inode_info* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  UDF_ID_DEVELOPER ; 
 int UDF_INVALID_ID ; 
 void* UDF_OS_CLASS_UNIX ; 
 void* UDF_OS_ID_LINUX ; 
 scalar_t__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 struct udf_sb_info* FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 scalar_t__ FUNC11 (struct buffer_head*) ; 
 void* FUNC12 (int) ; 
 void* FUNC13 (int) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC17 (struct inode*) ; 
 int FUNC18 (struct inode*) ; 
 int FUNC19 (struct inode*) ; 
 int FUNC20 (struct inode*) ; 
 int FUNC21 (void*) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (struct regid*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (struct regid*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 
 scalar_t__ FUNC29 (struct inode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC30 (struct udf_inode_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 scalar_t__ FUNC32 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_5__*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_7__*) ; 
 struct buffer_head* FUNC35 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC39(struct inode *inode, int do_sync)
{
	struct buffer_head *bh = NULL;
	struct fileEntry *fe;
	struct extendedFileEntry *efe;
	uint64_t lb_recorded;
	uint32_t udfperms;
	uint16_t icbflags;
	uint16_t crclen;
	int err = 0;
	struct udf_sb_info *sbi = FUNC9(inode->i_sb);
	unsigned char blocksize_bits = inode->i_sb->s_blocksize_bits;
	struct udf_inode_info *iinfo = FUNC7(inode);

	bh = FUNC35(inode->i_sb,
			FUNC33(inode->i_sb, &iinfo->i_location, 0));
	if (!bh) {
		FUNC31("getblk failure\n");
		return -EIO;
	}

	FUNC22(bh);
	FUNC25(bh->b_data, 0, inode->i_sb->s_blocksize);
	fe = (struct fileEntry *)bh->b_data;
	efe = (struct extendedFileEntry *)bh->b_data;

	if (iinfo->i_use) {
		struct unallocSpaceEntry *use =
			(struct unallocSpaceEntry *)bh->b_data;

		use->lengthAllocDescs = FUNC13(iinfo->i_lenAlloc);
		FUNC24(bh->b_data + sizeof(struct unallocSpaceEntry),
		       iinfo->i_ext.i_data, inode->i_sb->s_blocksize -
					sizeof(struct unallocSpaceEntry));
		use->descTag.tagIdent = FUNC12(TAG_IDENT_USE);
		crclen = sizeof(struct unallocSpaceEntry);

		goto finish;
	}

	if (FUNC8(inode->i_sb, UDF_FLAG_UID_FORGET))
		fe->uid = FUNC13(UDF_INVALID_ID);
	else
		fe->uid = FUNC13(FUNC18(inode));

	if (FUNC8(inode->i_sb, UDF_FLAG_GID_FORGET))
		fe->gid = FUNC13(UDF_INVALID_ID);
	else
		fe->gid = FUNC13(FUNC17(inode));

	udfperms = ((inode->i_mode & 0007)) |
		   ((inode->i_mode & 0070) << 2) |
		   ((inode->i_mode & 0700) << 4);

	udfperms |= iinfo->i_extraPerms;
	fe->permissions = FUNC13(udfperms);

	if (FUNC2(inode->i_mode) && inode->i_nlink > 0)
		fe->fileLinkCount = FUNC12(inode->i_nlink - 1);
	else
		fe->fileLinkCount = FUNC12(inode->i_nlink);

	fe->informationLength = FUNC14(inode->i_size);

	if (FUNC1(inode->i_mode) || FUNC0(inode->i_mode)) {
		struct regid *eid;
		struct deviceSpec *dsea =
			(struct deviceSpec *)FUNC32(inode, 12, 1);
		if (!dsea) {
			dsea = (struct deviceSpec *)
				FUNC29(inode,
						     sizeof(struct deviceSpec) +
						     sizeof(struct regid), 12, 0x3);
			dsea->attrType = FUNC13(12);
			dsea->attrSubtype = 1;
			dsea->attrLength = FUNC13(
						sizeof(struct deviceSpec) +
						sizeof(struct regid));
			dsea->impUseLength = FUNC13(sizeof(struct regid));
		}
		eid = (struct regid *)dsea->impUse;
		FUNC25(eid, 0, sizeof(*eid));
		FUNC27(eid->ident, UDF_ID_DEVELOPER);
		eid->identSuffix[0] = UDF_OS_CLASS_UNIX;
		eid->identSuffix[1] = UDF_OS_ID_LINUX;
		dsea->majorDeviceIdent = FUNC13(FUNC19(inode));
		dsea->minorDeviceIdent = FUNC13(FUNC20(inode));
	}

	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		lb_recorded = 0; /* No extents => no blocks! */
	else
		lb_recorded =
			(inode->i_blocks + (1 << (blocksize_bits - 9)) - 1) >>
			(blocksize_bits - 9);

	if (iinfo->i_efe == 0) {
		FUNC24(bh->b_data + sizeof(struct fileEntry),
		       iinfo->i_ext.i_data,
		       inode->i_sb->s_blocksize - sizeof(struct fileEntry));
		fe->logicalBlocksRecorded = FUNC14(lb_recorded);

		FUNC36(&fe->accessTime, inode->i_atime);
		FUNC36(&fe->modificationTime, inode->i_mtime);
		FUNC36(&fe->attrTime, inode->i_ctime);
		FUNC25(&(fe->impIdent), 0, sizeof(struct regid));
		FUNC27(fe->impIdent.ident, UDF_ID_DEVELOPER);
		fe->impIdent.identSuffix[0] = UDF_OS_CLASS_UNIX;
		fe->impIdent.identSuffix[1] = UDF_OS_ID_LINUX;
		fe->uniqueID = FUNC14(iinfo->i_unique);
		fe->lengthExtendedAttr = FUNC13(iinfo->i_lenEAttr);
		fe->lengthAllocDescs = FUNC13(iinfo->i_lenAlloc);
		fe->checkpoint = FUNC13(iinfo->i_checkpoint);
		fe->descTag.tagIdent = FUNC12(TAG_IDENT_FE);
		crclen = sizeof(struct fileEntry);
	} else {
		FUNC24(bh->b_data + sizeof(struct extendedFileEntry),
		       iinfo->i_ext.i_data,
		       inode->i_sb->s_blocksize -
					sizeof(struct extendedFileEntry));
		efe->objectSize =
			FUNC14(inode->i_size + iinfo->i_lenStreams);
		efe->logicalBlocksRecorded = FUNC14(lb_recorded);

		if (iinfo->i_streamdir) {
			struct long_ad *icb_lad = &efe->streamDirectoryICB;

			icb_lad->extLocation =
				FUNC15(iinfo->i_locStreamdir);
			icb_lad->extLength =
				FUNC13(inode->i_sb->s_blocksize);
		}

		FUNC30(iinfo, inode->i_atime);
		FUNC30(iinfo, inode->i_mtime);
		FUNC30(iinfo, inode->i_ctime);

		FUNC36(&efe->accessTime, inode->i_atime);
		FUNC36(&efe->modificationTime, inode->i_mtime);
		FUNC36(&efe->createTime, iinfo->i_crtime);
		FUNC36(&efe->attrTime, inode->i_ctime);

		FUNC25(&(efe->impIdent), 0, sizeof(efe->impIdent));
		FUNC27(efe->impIdent.ident, UDF_ID_DEVELOPER);
		efe->impIdent.identSuffix[0] = UDF_OS_CLASS_UNIX;
		efe->impIdent.identSuffix[1] = UDF_OS_ID_LINUX;
		efe->uniqueID = FUNC14(iinfo->i_unique);
		efe->lengthExtendedAttr = FUNC13(iinfo->i_lenEAttr);
		efe->lengthAllocDescs = FUNC13(iinfo->i_lenAlloc);
		efe->checkpoint = FUNC13(iinfo->i_checkpoint);
		efe->descTag.tagIdent = FUNC12(TAG_IDENT_EFE);
		crclen = sizeof(struct extendedFileEntry);
	}

finish:
	if (iinfo->i_strat4096) {
		fe->icbTag.strategyType = FUNC12(4096);
		fe->icbTag.strategyParameter = FUNC12(1);
		fe->icbTag.numEntries = FUNC12(2);
	} else {
		fe->icbTag.strategyType = FUNC12(4);
		fe->icbTag.numEntries = FUNC12(1);
	}

	if (iinfo->i_use)
		fe->icbTag.fileType = ICBTAG_FILE_TYPE_USE;
	else if (FUNC2(inode->i_mode))
		fe->icbTag.fileType = ICBTAG_FILE_TYPE_DIRECTORY;
	else if (FUNC5(inode->i_mode))
		fe->icbTag.fileType = ICBTAG_FILE_TYPE_REGULAR;
	else if (FUNC4(inode->i_mode))
		fe->icbTag.fileType = ICBTAG_FILE_TYPE_SYMLINK;
	else if (FUNC0(inode->i_mode))
		fe->icbTag.fileType = ICBTAG_FILE_TYPE_BLOCK;
	else if (FUNC1(inode->i_mode))
		fe->icbTag.fileType = ICBTAG_FILE_TYPE_CHAR;
	else if (FUNC3(inode->i_mode))
		fe->icbTag.fileType = ICBTAG_FILE_TYPE_FIFO;
	else if (FUNC6(inode->i_mode))
		fe->icbTag.fileType = ICBTAG_FILE_TYPE_SOCKET;

	icbflags =	iinfo->i_alloc_type |
			((inode->i_mode & S_ISUID) ? ICBTAG_FLAG_SETUID : 0) |
			((inode->i_mode & S_ISGID) ? ICBTAG_FLAG_SETGID : 0) |
			((inode->i_mode & S_ISVTX) ? ICBTAG_FLAG_STICKY : 0) |
			(FUNC21(fe->icbTag.flags) &
				~(ICBTAG_FLAG_AD_MASK | ICBTAG_FLAG_SETUID |
				ICBTAG_FLAG_SETGID | ICBTAG_FLAG_STICKY));

	fe->icbTag.flags = FUNC12(icbflags);
	if (sbi->s_udfrev >= 0x0200)
		fe->descTag.descVersion = FUNC12(3);
	else
		fe->descTag.descVersion = FUNC12(2);
	fe->descTag.tagSerialNum = FUNC12(sbi->s_serial_number);
	fe->descTag.tagLocation = FUNC13(
					iinfo->i_location.logicalBlockNum);
	crclen += iinfo->i_lenEAttr + iinfo->i_lenAlloc - sizeof(struct tag);
	fe->descTag.descCRCLength = FUNC12(crclen);
	fe->descTag.descCRC = FUNC12(FUNC16(0, (char *)fe + sizeof(struct tag),
						  crclen));
	fe->descTag.tagChecksum = FUNC34(&fe->descTag);

	FUNC26(bh);
	FUNC38(bh);

	/* write the data blocks */
	FUNC23(bh);
	if (do_sync) {
		FUNC28(bh);
		if (FUNC11(bh)) {
			FUNC37(inode->i_sb, "IO error syncing udf inode [%08lx]\n",
				 inode->i_ino);
			err = -EIO;
		}
	}
	FUNC10(bh);

	return err;
}
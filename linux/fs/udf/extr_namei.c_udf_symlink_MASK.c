#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ udf_pblk_t ;
struct TYPE_12__ {int /*<<< orphan*/ * i_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_lenExtents; int i_lenEAttr; int i_lenAlloc; int /*<<< orphan*/  i_data_sem; TYPE_3__ i_ext; TYPE_2__ i_location; } ;
struct super_block {int s_blocksize; } ;
struct pathComponent {int componentType; int lengthComponentIdent; int /*<<< orphan*/  componentIdent; scalar_t__ componentFileVersionNum; } ;
struct kernel_lb_addr {int /*<<< orphan*/  partitionReferenceNum; scalar_t__ logicalBlockNum; } ;
struct TYPE_10__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {int i_size; int /*<<< orphan*/ * i_op; TYPE_1__ i_data; struct super_block* i_sb; } ;
struct extent_position {TYPE_4__* bh; int /*<<< orphan*/  offset; TYPE_2__ block; } ;
struct dentry {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * b_data; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFLNK ; 
 struct udf_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  UDF_NAME_LEN_CS0 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct dentry*,struct inode*) ; 
 int FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 scalar_t__ FUNC20 (struct super_block*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct super_block*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct inode* FUNC22 (struct inode*,int) ; 
 int FUNC23 (struct super_block*,char const*,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udf_symlink_aops ; 
 int /*<<< orphan*/  udf_symlink_inode_operations ; 
 TYPE_4__* FUNC24 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct inode *dir, struct dentry *dentry,
		       const char *symname)
{
	struct inode *inode = FUNC22(dir, S_IFLNK | 0777);
	struct pathComponent *pc;
	const char *compstart;
	struct extent_position epos = {};
	int eoffset, elen = 0;
	uint8_t *ea;
	int err;
	udf_pblk_t block;
	unsigned char *name = NULL;
	int namelen;
	struct udf_inode_info *iinfo;
	struct super_block *sb = dir->i_sb;

	if (FUNC0(inode))
		return FUNC1(inode);

	iinfo = FUNC2(inode);
	FUNC5(&iinfo->i_data_sem);
	name = FUNC9(UDF_NAME_LEN_CS0, GFP_NOFS);
	if (!name) {
		err = -ENOMEM;
		goto out_no_entry;
	}

	inode->i_data.a_ops = &udf_symlink_aops;
	inode->i_op = &udf_symlink_inode_operations;
	FUNC7(inode);

	if (iinfo->i_alloc_type != ICBTAG_FLAG_AD_IN_ICB) {
		struct kernel_lb_addr eloc;
		uint32_t bsize;

		block = FUNC21(sb, inode,
				iinfo->i_location.partitionReferenceNum,
				iinfo->i_location.logicalBlockNum, &err);
		if (!block)
			goto out_no_entry;
		epos.block = iinfo->i_location;
		epos.offset = FUNC19(inode);
		epos.bh = NULL;
		eloc.logicalBlockNum = block;
		eloc.partitionReferenceNum =
				iinfo->i_location.partitionReferenceNum;
		bsize = sb->s_blocksize;
		iinfo->i_lenExtents = bsize;
		FUNC16(inode, &epos, &eloc, bsize, 0);
		FUNC3(epos.bh);

		block = FUNC20(sb, block,
				iinfo->i_location.partitionReferenceNum,
				0);
		epos.bh = FUNC24(sb, block);
		FUNC10(epos.bh);
		FUNC14(epos.bh->b_data, 0x00, bsize);
		FUNC15(epos.bh);
		FUNC26(epos.bh);
		FUNC11(epos.bh, inode);
		ea = epos.bh->b_data + FUNC18(inode);
	} else
		ea = iinfo->i_ext.i_data + iinfo->i_lenEAttr;

	eoffset = sb->s_blocksize - FUNC18(inode);
	pc = (struct pathComponent *)ea;

	if (*symname == '/') {
		do {
			symname++;
		} while (*symname == '/');

		pc->componentType = 1;
		pc->lengthComponentIdent = 0;
		pc->componentFileVersionNum = 0;
		elen += sizeof(struct pathComponent);
	}

	err = -ENAMETOOLONG;

	while (*symname) {
		if (elen + sizeof(struct pathComponent) > eoffset)
			goto out_no_entry;

		pc = (struct pathComponent *)(ea + elen);

		compstart = symname;

		do {
			symname++;
		} while (*symname && *symname != '/');

		pc->componentType = 5;
		pc->lengthComponentIdent = 0;
		pc->componentFileVersionNum = 0;
		if (compstart[0] == '.') {
			if ((symname - compstart) == 1)
				pc->componentType = 4;
			else if ((symname - compstart) == 2 &&
					compstart[1] == '.')
				pc->componentType = 3;
		}

		if (pc->componentType == 5) {
			namelen = FUNC23(sb, compstart,
						   symname - compstart,
						   name, UDF_NAME_LEN_CS0);
			if (!namelen)
				goto out_no_entry;

			if (elen + sizeof(struct pathComponent) + namelen >
					eoffset)
				goto out_no_entry;
			else
				pc->lengthComponentIdent = namelen;

			FUNC13(pc->componentIdent, name, namelen);
		}

		elen += sizeof(struct pathComponent) + pc->lengthComponentIdent;

		if (*symname) {
			do {
				symname++;
			} while (*symname == '/');
		}
	}

	FUNC3(epos.bh);
	inode->i_size = elen;
	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		iinfo->i_lenAlloc = inode->i_size;
	else
		FUNC25(inode);
	FUNC12(inode);
	FUNC27(&iinfo->i_data_sem);

	err = FUNC17(dentry, inode);
out:
	FUNC8(name);
	return err;

out_no_entry:
	FUNC27(&iinfo->i_data_sem);
	FUNC6(inode);
	FUNC4(inode);
	goto out;
}
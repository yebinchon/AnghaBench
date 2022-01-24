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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  udf_pblk_t ;
struct tag {int dummy; } ;
struct super_block {int s_blocksize; } ;
struct short_ad {int dummy; } ;
struct long_ad {int dummy; } ;
struct kernel_lb_addr {int /*<<< orphan*/  logicalBlockNum; int /*<<< orphan*/  partitionReferenceNum; } ;
struct inode {struct super_block* i_sb; } ;
struct extent_position {int offset; struct buffer_head* bh; struct kernel_lb_addr block; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct allocExtDesc {void* lengthAllocDescs; void* previousAllocExtLocation; } ;
struct TYPE_4__ {scalar_t__ i_alloc_type; } ;
struct TYPE_3__ {int s_udfrev; } ;

/* Variables and functions */
 int EIO ; 
 int EXT_NEXT_EXTENT_ALLOCDECS ; 
 scalar_t__ ICBTAG_FLAG_AD_LONG ; 
 scalar_t__ ICBTAG_FLAG_AD_SHORT ; 
 int /*<<< orphan*/  TAG_IDENT_AED ; 
 int /*<<< orphan*/  UDF_FLAG_STRICT ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int FUNC10 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC13 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

int FUNC16(struct inode *inode, udf_pblk_t block,
			    struct extent_position *epos)
{
	struct super_block *sb = inode->i_sb;
	struct buffer_head *bh;
	struct allocExtDesc *aed;
	struct extent_position nepos;
	struct kernel_lb_addr neloc;
	int ver, adsize;

	if (FUNC0(inode)->i_alloc_type == ICBTAG_FLAG_AD_SHORT)
		adsize = sizeof(struct short_ad);
	else if (FUNC0(inode)->i_alloc_type == ICBTAG_FLAG_AD_LONG)
		adsize = sizeof(struct long_ad);
	else
		return -EIO;

	neloc.logicalBlockNum = block;
	neloc.partitionReferenceNum = epos->block.partitionReferenceNum;

	bh = FUNC13(sb, FUNC11(sb, &neloc, 0));
	if (!bh)
		return -EIO;
	FUNC6(bh);
	FUNC8(bh->b_data, 0x00, sb->s_blocksize);
	FUNC9(bh);
	FUNC15(bh);
	FUNC7(bh, inode);

	aed = (struct allocExtDesc *)(bh->b_data);
	if (!FUNC1(sb, UDF_FLAG_STRICT)) {
		aed->previousAllocExtLocation =
				FUNC5(epos->block.logicalBlockNum);
	}
	aed->lengthAllocDescs = FUNC5(0);
	if (FUNC2(sb)->s_udfrev >= 0x0200)
		ver = 3;
	else
		ver = 2;
	FUNC12(bh->b_data, TAG_IDENT_AED, ver, 1, block,
		    sizeof(struct tag));

	nepos.block = neloc;
	nepos.offset = sizeof(struct allocExtDesc);
	nepos.bh = bh;

	/*
	 * Do we have to copy current last extent to make space for indirect
	 * one?
	 */
	if (epos->offset + adsize > sb->s_blocksize) {
		struct kernel_lb_addr cp_loc;
		uint32_t cp_len;
		int cp_type;

		epos->offset -= adsize;
		cp_type = FUNC10(inode, epos, &cp_loc, &cp_len, 0);
		cp_len |= ((uint32_t)cp_type) << 30;

		FUNC3(inode, &nepos, &cp_loc, cp_len, 1);
		FUNC14(inode, epos, &nepos.block,
			       sb->s_blocksize | EXT_NEXT_EXTENT_ALLOCDECS, 0);
	} else {
		FUNC3(inode, epos, &nepos.block,
			       sb->s_blocksize | EXT_NEXT_EXTENT_ALLOCDECS, 0);
	}

	FUNC4(epos->bh);
	*epos = nepos;

	return 0;
}
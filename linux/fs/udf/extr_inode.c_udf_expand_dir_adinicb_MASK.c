#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  udf_pblk_t ;
struct TYPE_10__ {int /*<<< orphan*/  partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct TYPE_9__ {int i_data; } ;
struct udf_inode_info {int i_lenEAttr; int i_lenAlloc; int i_lenExtents; TYPE_3__ i_location; TYPE_2__ i_ext; void* i_alloc_type; } ;
struct udf_fileident_bh {int soffset; int eoffset; struct buffer_head* ebh; struct buffer_head* sbh; } ;
struct kernel_lb_addr {int /*<<< orphan*/  partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct inode {int i_size; TYPE_4__* i_sb; } ;
struct TYPE_8__ {int /*<<< orphan*/  tagLocation; } ;
struct fileIdentDesc {int /*<<< orphan*/  lengthOfImpUse; scalar_t__ fileIdent; int /*<<< orphan*/  impUse; TYPE_1__ descTag; } ;
struct extent_position {struct buffer_head* bh; int /*<<< orphan*/  offset; TYPE_3__ block; } ;
struct buffer_head {int b_data; } ;
typedef  int loff_t ;
struct TYPE_11__ {int s_blocksize; } ;

/* Variables and functions */
 void* ICBTAG_FLAG_AD_IN_ICB ; 
 void* ICBTAG_FLAG_AD_LONG ; 
 void* ICBTAG_FLAG_AD_SHORT ; 
 int /*<<< orphan*/  UDF_FLAG_USE_SHORT_AD ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 struct fileIdentDesc* FUNC13 (struct inode*,int*,struct udf_fileident_bh*,struct fileIdentDesc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct buffer_head* FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 

struct buffer_head *FUNC19(struct inode *inode,
					    udf_pblk_t *block, int *err)
{
	udf_pblk_t newblock;
	struct buffer_head *dbh = NULL;
	struct kernel_lb_addr eloc;
	uint8_t alloctype;
	struct extent_position epos;

	struct udf_fileident_bh sfibh, dfibh;
	loff_t f_pos = FUNC11(inode);
	int size = FUNC11(inode) + inode->i_size;
	struct fileIdentDesc cfi, *sfi, *dfi;
	struct udf_inode_info *iinfo = FUNC0(inode);

	if (FUNC1(inode->i_sb, UDF_FLAG_USE_SHORT_AD))
		alloctype = ICBTAG_FLAG_AD_SHORT;
	else
		alloctype = ICBTAG_FLAG_AD_LONG;

	if (!inode->i_size) {
		iinfo->i_alloc_type = alloctype;
		FUNC7(inode);
		return NULL;
	}

	/* alloc block, and copy data to it */
	*block = FUNC15(inode->i_sb, inode,
			       iinfo->i_location.partitionReferenceNum,
			       iinfo->i_location.logicalBlockNum, err);
	if (!(*block))
		return NULL;
	newblock = FUNC14(inode->i_sb, *block,
				  iinfo->i_location.partitionReferenceNum,
				0);
	if (!newblock)
		return NULL;
	dbh = FUNC16(inode->i_sb, newblock);
	if (!dbh)
		return NULL;
	FUNC5(dbh);
	FUNC8(dbh->b_data, 0x00, inode->i_sb->s_blocksize);
	FUNC9(dbh);
	FUNC18(dbh);
	FUNC6(dbh, inode);

	sfibh.soffset = sfibh.eoffset =
			f_pos & (inode->i_sb->s_blocksize - 1);
	sfibh.sbh = sfibh.ebh = NULL;
	dfibh.soffset = dfibh.eoffset = 0;
	dfibh.sbh = dfibh.ebh = dbh;
	while (f_pos < size) {
		iinfo->i_alloc_type = ICBTAG_FLAG_AD_IN_ICB;
		sfi = FUNC13(inode, &f_pos, &sfibh, &cfi, NULL,
					 NULL, NULL, NULL);
		if (!sfi) {
			FUNC2(dbh);
			return NULL;
		}
		iinfo->i_alloc_type = alloctype;
		sfi->descTag.tagLocation = FUNC3(*block);
		dfibh.soffset = dfibh.eoffset;
		dfibh.eoffset += (sfibh.eoffset - sfibh.soffset);
		dfi = (struct fileIdentDesc *)(dbh->b_data + dfibh.soffset);
		if (FUNC17(inode, sfi, dfi, &dfibh, sfi->impUse,
				 sfi->fileIdent +
					FUNC4(sfi->lengthOfImpUse))) {
			iinfo->i_alloc_type = ICBTAG_FLAG_AD_IN_ICB;
			FUNC2(dbh);
			return NULL;
		}
	}
	FUNC6(dbh, inode);

	FUNC8(iinfo->i_ext.i_data + iinfo->i_lenEAttr, 0,
		iinfo->i_lenAlloc);
	iinfo->i_lenAlloc = 0;
	eloc.logicalBlockNum = *block;
	eloc.partitionReferenceNum =
				iinfo->i_location.partitionReferenceNum;
	iinfo->i_lenExtents = inode->i_size;
	epos.bh = NULL;
	epos.block = iinfo->i_location;
	epos.offset = FUNC12(inode);
	FUNC10(inode, &epos, &eloc, inode->i_size, 0);
	/* UniqueID stuff */

	FUNC2(epos.bh);
	FUNC7(inode);
	return dbh;
}
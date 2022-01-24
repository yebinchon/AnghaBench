#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct udf_inode_info {scalar_t__ i_alloc_type; scalar_t__ i_lenAlloc; } ;
struct short_ad {int dummy; } ;
struct long_ad {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {TYPE_3__* i_sb; } ;
struct extent_position {int offset; TYPE_1__* bh; } ;
struct allocExtDesc {int /*<<< orphan*/  lengthAllocDescs; } ;
struct TYPE_7__ {int s_blocksize; } ;
struct TYPE_6__ {int s_udfrev; } ;
struct TYPE_5__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ ICBTAG_FLAG_AD_LONG ; 
 scalar_t__ ICBTAG_FLAG_AD_SHORT ; 
 int /*<<< orphan*/  UDF_FLAG_STRICT ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int /*<<< orphan*/ ,int) ; 

int FUNC11(struct inode *inode, struct extent_position *epos,
		   struct kernel_lb_addr *eloc, uint32_t elen, int inc)
{
	struct udf_inode_info *iinfo = FUNC0(inode);
	struct allocExtDesc *aed;
	int adsize;

	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_SHORT)
		adsize = sizeof(struct short_ad);
	else if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_LONG)
		adsize = sizeof(struct long_ad);
	else
		return -EIO;

	if (!epos->bh) {
		FUNC3(iinfo->i_lenAlloc !=
			epos->offset - FUNC8(inode));
	} else {
		aed = (struct allocExtDesc *)epos->bh->b_data;
		FUNC3(FUNC5(aed->lengthAllocDescs) !=
			epos->offset - sizeof(struct allocExtDesc));
		FUNC3(epos->offset + adsize > inode->i_sb->s_blocksize);
	}

	FUNC10(inode, epos, eloc, elen, inc);

	if (!epos->bh) {
		iinfo->i_lenAlloc += adsize;
		FUNC7(inode);
	} else {
		aed = (struct allocExtDesc *)epos->bh->b_data;
		FUNC4(&aed->lengthAllocDescs, adsize);
		if (!FUNC1(inode->i_sb, UDF_FLAG_STRICT) ||
				FUNC2(inode->i_sb)->s_udfrev >= 0x0201)
			FUNC9(epos->bh->b_data,
					epos->offset + (inc ? 0 : adsize));
		else
			FUNC9(epos->bh->b_data,
					sizeof(struct allocExtDesc));
		FUNC6(epos->bh, inode);
	}

	return 0;
}
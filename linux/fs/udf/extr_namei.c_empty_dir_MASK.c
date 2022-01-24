#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  udf_pblk_t ;
struct udf_inode_info {scalar_t__ i_alloc_type; } ;
struct udf_fileident_bh {int soffset; int eoffset; int /*<<< orphan*/ * sbh; int /*<<< orphan*/ * ebh; } ;
struct short_ad {int dummy; } ;
struct long_ad {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int i_size; TYPE_1__* i_sb; } ;
struct fileIdentDesc {int fileCharacteristics; scalar_t__ lengthFileIdent; } ;
struct extent_position {int offset; int /*<<< orphan*/ * bh; } ;
typedef  int sector_t ;
typedef  int loff_t ;
struct TYPE_3__ {int s_blocksize; int s_blocksize_bits; } ;

/* Variables and functions */
 int EXT_RECORDED_ALLOCATED ; 
 int FID_FILE_CHAR_DELETED ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 scalar_t__ ICBTAG_FLAG_AD_LONG ; 
 scalar_t__ ICBTAG_FLAG_AD_SHORT ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*,int,struct extent_position*,struct kernel_lb_addr*,int*,int*) ; 
 int FUNC3 (struct inode*) ; 
 struct fileIdentDesc* FUNC4 (struct inode*,int*,struct udf_fileident_bh*,struct fileIdentDesc*,struct extent_position*,struct kernel_lb_addr*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct kernel_lb_addr*,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *dir)
{
	struct fileIdentDesc *fi, cfi;
	struct udf_fileident_bh fibh;
	loff_t f_pos;
	loff_t size = FUNC3(dir) + dir->i_size;
	udf_pblk_t block;
	struct kernel_lb_addr eloc;
	uint32_t elen;
	sector_t offset;
	struct extent_position epos = {};
	struct udf_inode_info *dinfo = FUNC0(dir);

	f_pos = FUNC3(dir);
	fibh.soffset = fibh.eoffset = f_pos & (dir->i_sb->s_blocksize - 1);

	if (dinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		fibh.sbh = fibh.ebh = NULL;
	else if (FUNC2(dir, f_pos >> dir->i_sb->s_blocksize_bits,
			      &epos, &eloc, &elen, &offset) ==
					(EXT_RECORDED_ALLOCATED >> 30)) {
		block = FUNC5(dir->i_sb, &eloc, offset);
		if ((++offset << dir->i_sb->s_blocksize_bits) < elen) {
			if (dinfo->i_alloc_type == ICBTAG_FLAG_AD_SHORT)
				epos.offset -= sizeof(struct short_ad);
			else if (dinfo->i_alloc_type == ICBTAG_FLAG_AD_LONG)
				epos.offset -= sizeof(struct long_ad);
		} else
			offset = 0;

		fibh.sbh = fibh.ebh = FUNC6(dir->i_sb, block);
		if (!fibh.sbh) {
			FUNC1(epos.bh);
			return 0;
		}
	} else {
		FUNC1(epos.bh);
		return 0;
	}

	while (f_pos < size) {
		fi = FUNC4(dir, &f_pos, &fibh, &cfi, &epos, &eloc,
					&elen, &offset);
		if (!fi) {
			if (fibh.sbh != fibh.ebh)
				FUNC1(fibh.ebh);
			FUNC1(fibh.sbh);
			FUNC1(epos.bh);
			return 0;
		}

		if (cfi.lengthFileIdent &&
		    (cfi.fileCharacteristics & FID_FILE_CHAR_DELETED) == 0) {
			if (fibh.sbh != fibh.ebh)
				FUNC1(fibh.ebh);
			FUNC1(fibh.sbh);
			FUNC1(epos.bh);
			return 0;
		}
	}

	if (fibh.sbh != fibh.ebh)
		FUNC1(fibh.ebh);
	FUNC1(fibh.sbh);
	FUNC1(epos.bh);

	return 1;
}
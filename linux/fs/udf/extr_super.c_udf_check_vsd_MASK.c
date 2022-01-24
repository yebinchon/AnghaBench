#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct volStructDesc {int dummy; } ;
struct udf_sb_info {int s_session; } ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int loff_t ;

/* Variables and functions */
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int VSD_FIRST_SECTOR_OFFSET ; 
 int VSD_MAX_SECTOR_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct volStructDesc*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int) ; 
 struct buffer_head* FUNC4 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb)
{
	struct volStructDesc *vsd = NULL;
	loff_t sector = VSD_FIRST_SECTOR_OFFSET;
	int sectorsize;
	struct buffer_head *bh = NULL;
	int nsr = 0;
	struct udf_sb_info *sbi;

	sbi = FUNC0(sb);
	if (sb->s_blocksize < sizeof(struct volStructDesc))
		sectorsize = sizeof(struct volStructDesc);
	else
		sectorsize = sb->s_blocksize;

	sector += (((loff_t)sbi->s_session) << sb->s_blocksize_bits);

	FUNC3("Starting at sector %u (%lu byte sectors)\n",
		  (unsigned int)(sector >> sb->s_blocksize_bits),
		  sb->s_blocksize);
	/* Process the sequence (if applicable). The hard limit on the sector
	 * offset is arbitrary, hopefully large enough so that all valid UDF
	 * filesystems will be recognised. There is no mention of an upper
	 * bound to the size of the volume recognition area in the standard.
	 *  The limit will prevent the code to read all the sectors of a
	 * specially crafted image (like a bluray disc full of CD001 sectors),
	 * potentially causing minutes or even hours of uninterruptible I/O
	 * activity. This actually happened with uninitialised SSD partitions
	 * (all 0xFF) before the check for the limit and all valid IDs were
	 * added */
	for (; !nsr && sector < VSD_MAX_SECTOR_OFFSET; sector += sectorsize) {
		/* Read a block */
		bh = FUNC4(sb, sector >> sb->s_blocksize_bits);
		if (!bh)
			break;

		vsd = (struct volStructDesc *)(bh->b_data +
					      (sector & (sb->s_blocksize - 1)));
		nsr = FUNC2(vsd);
		/* Found NSR or end? */
		if (nsr) {
			FUNC1(bh);
			break;
		}
		/*
		 * Special handling for improperly formatted VRS (e.g., Win10)
		 * where components are separated by 2048 bytes even though
		 * sectors are 4K
		 */
		if (sb->s_blocksize == 4096) {
			nsr = FUNC2(vsd + 1);
			/* Ignore unknown IDs... */
			if (nsr < 0)
				nsr = 0;
		}
		FUNC1(bh);
	}

	if (nsr > 0)
		return 1;
	else if (!bh && sector - (sbi->s_session << sb->s_blocksize_bits) ==
			VSD_FIRST_SECTOR_OFFSET)
		return -1;
	else
		return 0;
}
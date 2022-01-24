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
struct udf_sb_info {struct buffer_head* s_lvid_bh; } ;
struct super_block {scalar_t__ s_blocksize; } ;
struct TYPE_2__ {scalar_t__ extLength; } ;
struct logicalVolIntegrityDesc {TYPE_1__ nextIntegrityExt; } ;
struct kernel_extent_ad {scalar_t__ extLength; int /*<<< orphan*/  extLocation; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ TAG_IDENT_LVID ; 
 int UDF_MAX_LVID_NESTING ; 
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct kernel_extent_ad FUNC2 (TYPE_1__) ; 
 struct buffer_head* FUNC3 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct super_block *sb, struct kernel_extent_ad loc)
{
	struct buffer_head *bh, *final_bh;
	uint16_t ident;
	struct udf_sb_info *sbi = FUNC0(sb);
	struct logicalVolIntegrityDesc *lvid;
	int indirections = 0;

	while (++indirections <= UDF_MAX_LVID_NESTING) {
		final_bh = NULL;
		while (loc.extLength > 0 &&
			(bh = FUNC3(sb, loc.extLocation,
					loc.extLocation, &ident))) {
			if (ident != TAG_IDENT_LVID) {
				FUNC1(bh);
				break;
			}

			FUNC1(final_bh);
			final_bh = bh;

			loc.extLength -= sb->s_blocksize;
			loc.extLocation++;
		}

		if (!final_bh)
			return;

		FUNC1(sbi->s_lvid_bh);
		sbi->s_lvid_bh = final_bh;

		lvid = (struct logicalVolIntegrityDesc *)final_bh->b_data;
		if (lvid->nextIntegrityExt.extLength == 0)
			return;

		loc = FUNC2(lvid->nextIntegrityExt);
	}

	FUNC4(sb, "Too many LVID indirections (max %u), ignoring.\n",
		UDF_MAX_LVID_NESTING);
	FUNC1(sbi->s_lvid_bh);
	sbi->s_lvid_bh = NULL;
}
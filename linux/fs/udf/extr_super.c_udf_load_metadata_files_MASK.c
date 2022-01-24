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
struct udf_sb_info {struct udf_part_map* s_partmaps; } ;
struct udf_meta_data {int s_phys_partition_ref; int s_bitmap_file_loc; struct inode* s_bitmap_fe; struct inode* s_metadata_fe; struct inode* s_mirror_fe; int /*<<< orphan*/  s_mirror_file_loc; int /*<<< orphan*/  s_meta_file_loc; } ;
struct TYPE_2__ {struct udf_meta_data s_metadata; } ;
struct udf_part_map {TYPE_1__ s_type_specific; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int logicalBlockNum; int partitionReferenceNum; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 struct udf_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*) ; 
 struct inode* FUNC6 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC7 (struct super_block*,struct kernel_lb_addr*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb, int partition,
				   int type1_index)
{
	struct udf_sb_info *sbi = FUNC2(sb);
	struct udf_part_map *map;
	struct udf_meta_data *mdata;
	struct kernel_lb_addr addr;
	struct inode *fe;

	map = &sbi->s_partmaps[partition];
	mdata = &map->s_type_specific.s_metadata;
	mdata->s_phys_partition_ref = type1_index;

	/* metadata address */
	FUNC4("Metadata file location: block = %u part = %u\n",
		  mdata->s_meta_file_loc, mdata->s_phys_partition_ref);

	fe = FUNC6(sb, mdata->s_meta_file_loc,
					 mdata->s_phys_partition_ref);
	if (FUNC0(fe)) {
		/* mirror file entry */
		FUNC4("Mirror metadata file location: block = %u part = %u\n",
			  mdata->s_mirror_file_loc, mdata->s_phys_partition_ref);

		fe = FUNC6(sb, mdata->s_mirror_file_loc,
						 mdata->s_phys_partition_ref);

		if (FUNC0(fe)) {
			FUNC5(sb, "Both metadata and mirror metadata inode efe can not found\n");
			return FUNC1(fe);
		}
		mdata->s_mirror_fe = fe;
	} else
		mdata->s_metadata_fe = fe;


	/*
	 * bitmap file entry
	 * Note:
	 * Load only if bitmap file location differs from 0xFFFFFFFF (DCN-5102)
	*/
	if (mdata->s_bitmap_file_loc != 0xFFFFFFFF) {
		addr.logicalBlockNum = mdata->s_bitmap_file_loc;
		addr.partitionReferenceNum = mdata->s_phys_partition_ref;

		FUNC4("Bitmap file location: block = %u part = %u\n",
			  addr.logicalBlockNum, addr.partitionReferenceNum);

		fe = FUNC7(sb, &addr);
		if (FUNC0(fe)) {
			if (FUNC3(sb))
				FUNC8(sb, "bitmap inode efe not found but it's ok since the disc is mounted read-only\n");
			else {
				FUNC5(sb, "bitmap inode efe not found and attempted read-write mount\n");
				return FUNC1(fe);
			}
		} else
			mdata->s_bitmap_fe = fe;
	}

	FUNC4("udf_load_metadata_files Ok\n");
	return 0;
}
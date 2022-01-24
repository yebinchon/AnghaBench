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
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct udf_sb_info {struct udf_part_map* s_partmaps; } ;
struct udf_meta_data {int s_flags; struct inode* s_mirror_fe; int /*<<< orphan*/  s_phys_partition_ref; int /*<<< orphan*/  s_mirror_file_loc; scalar_t__ s_metadata_fe; } ;
struct TYPE_2__ {struct udf_meta_data s_metadata; } ;
struct udf_part_map {TYPE_1__ s_type_specific; } ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int MF_MIRROR_FE_LOADED ; 
 struct udf_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*) ; 

uint32_t FUNC6(struct super_block *sb, uint32_t block,
				uint16_t partition, uint32_t offset)
{
	struct udf_sb_info *sbi = FUNC1(sb);
	struct udf_part_map *map;
	struct udf_meta_data *mdata;
	uint32_t retblk;
	struct inode *inode;

	FUNC2("READING from METADATA\n");

	map = &sbi->s_partmaps[partition];
	mdata = &map->s_type_specific.s_metadata;
	inode = mdata->s_metadata_fe ? : mdata->s_mirror_fe;

	if (!inode)
		return 0xFFFFFFFF;

	retblk = FUNC4(inode, block, partition, offset);
	if (retblk == 0xFFFFFFFF && mdata->s_metadata_fe) {
		FUNC5(sb, "error reading from METADATA, trying to read from MIRROR\n");
		if (!(mdata->s_flags & MF_MIRROR_FE_LOADED)) {
			mdata->s_mirror_fe = FUNC3(sb,
				mdata->s_mirror_file_loc,
				mdata->s_phys_partition_ref);
			if (FUNC0(mdata->s_mirror_fe))
				mdata->s_mirror_fe = NULL;
			mdata->s_flags |= MF_MIRROR_FE_LOADED;
		}

		inode = mdata->s_mirror_fe;
		if (!inode)
			return 0xFFFFFFFF;
		retblk = FUNC4(inode, block, partition, offset);
	}

	return retblk;
}
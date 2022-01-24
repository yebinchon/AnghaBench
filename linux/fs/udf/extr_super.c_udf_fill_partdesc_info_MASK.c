#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct udf_sb_info {struct udf_part_map* s_partmaps; } ;
struct TYPE_5__ {struct udf_bitmap* s_bitmap; struct inode* s_table; } ;
struct udf_part_map {int /*<<< orphan*/  s_partition_flags; TYPE_2__ s_uspace; void* s_partition_len; void* s_partition_root; int /*<<< orphan*/  s_partition_type; } ;
struct udf_bitmap {void* s_extPosition; } ;
struct super_block {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  extPosition; scalar_t__ extLength; } ;
struct TYPE_4__ {int /*<<< orphan*/  extPosition; scalar_t__ extLength; } ;
struct partitionHeaderDesc {TYPE_3__ unallocSpaceBitmap; TYPE_1__ unallocSpaceTable; } ;
struct partitionDesc {scalar_t__ accessType; scalar_t__ partitionContentsUse; int /*<<< orphan*/  partitionStartingLocation; int /*<<< orphan*/  partitionLength; } ;
struct kernel_lb_addr {void* logicalBlockNum; int partitionReferenceNum; } ;
struct inode {void* i_ino; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PD_ACCESS_TYPE_OVERWRITABLE ; 
 int /*<<< orphan*/  PD_ACCESS_TYPE_READ_ONLY ; 
 int /*<<< orphan*/  PD_ACCESS_TYPE_REWRITABLE ; 
 int /*<<< orphan*/  PD_ACCESS_TYPE_WRITE_ONCE ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  UDF_FLAG_RW_INCOMPAT ; 
 int /*<<< orphan*/  UDF_PART_FLAG_OVERWRITABLE ; 
 int /*<<< orphan*/  UDF_PART_FLAG_READ_ONLY ; 
 int /*<<< orphan*/  UDF_PART_FLAG_REWRITABLE ; 
 int /*<<< orphan*/  UDF_PART_FLAG_UNALLOC_BITMAP ; 
 int /*<<< orphan*/  UDF_PART_FLAG_UNALLOC_TABLE ; 
 int /*<<< orphan*/  UDF_PART_FLAG_WRITE_ONCE ; 
 scalar_t__ FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct udf_sb_info* FUNC3 (struct super_block*) ; 
 int FUNC4 (struct super_block*,struct partitionDesc*,struct udf_part_map*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 struct inode* FUNC8 (struct super_block*,struct kernel_lb_addr*) ; 
 struct udf_bitmap* FUNC9 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb,
		struct partitionDesc *p, int p_index)
{
	struct udf_part_map *map;
	struct udf_sb_info *sbi = FUNC3(sb);
	struct partitionHeaderDesc *phd;
	int err;

	map = &sbi->s_partmaps[p_index];

	map->s_partition_len = FUNC6(p->partitionLength); /* blocks */
	map->s_partition_root = FUNC6(p->partitionStartingLocation);

	if (p->accessType == FUNC5(PD_ACCESS_TYPE_READ_ONLY))
		map->s_partition_flags |= UDF_PART_FLAG_READ_ONLY;
	if (p->accessType == FUNC5(PD_ACCESS_TYPE_WRITE_ONCE))
		map->s_partition_flags |= UDF_PART_FLAG_WRITE_ONCE;
	if (p->accessType == FUNC5(PD_ACCESS_TYPE_REWRITABLE))
		map->s_partition_flags |= UDF_PART_FLAG_REWRITABLE;
	if (p->accessType == FUNC5(PD_ACCESS_TYPE_OVERWRITABLE))
		map->s_partition_flags |= UDF_PART_FLAG_OVERWRITABLE;

	FUNC7("Partition (%d type %x) starts at physical %u, block length %u\n",
		  p_index, map->s_partition_type,
		  map->s_partition_root, map->s_partition_len);

	err = FUNC4(sb, p, map);
	if (err)
		return err;

	/*
	 * Skip loading allocation info it we cannot ever write to the fs.
	 * This is a correctness thing as we may have decided to force ro mount
	 * to avoid allocation info we don't support.
	 */
	if (FUNC2(sb, UDF_FLAG_RW_INCOMPAT))
		return 0;

	phd = (struct partitionHeaderDesc *)p->partitionContentsUse;
	if (phd->unallocSpaceTable.extLength) {
		struct kernel_lb_addr loc = {
			.logicalBlockNum = FUNC6(
				phd->unallocSpaceTable.extPosition),
			.partitionReferenceNum = p_index,
		};
		struct inode *inode;

		inode = FUNC8(sb, &loc);
		if (FUNC0(inode)) {
			FUNC7("cannot load unallocSpaceTable (part %d)\n",
				  p_index);
			return FUNC1(inode);
		}
		map->s_uspace.s_table = inode;
		map->s_partition_flags |= UDF_PART_FLAG_UNALLOC_TABLE;
		FUNC7("unallocSpaceTable (part %d) @ %lu\n",
			  p_index, map->s_uspace.s_table->i_ino);
	}

	if (phd->unallocSpaceBitmap.extLength) {
		struct udf_bitmap *bitmap = FUNC9(sb, p_index);
		if (!bitmap)
			return -ENOMEM;
		map->s_uspace.s_bitmap = bitmap;
		bitmap->s_extPosition = FUNC6(
				phd->unallocSpaceBitmap.extPosition);
		map->s_partition_flags |= UDF_PART_FLAG_UNALLOC_BITMAP;
		FUNC7("unallocSpaceBitmap (part %d) @ %u\n",
			  p_index, bitmap->s_extPosition);
	}

	return 0;
}
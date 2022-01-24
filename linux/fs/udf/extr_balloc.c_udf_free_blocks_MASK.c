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
typedef  scalar_t__ uint32_t ;
typedef  size_t uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  s_table; int /*<<< orphan*/  s_bitmap; } ;
struct udf_part_map {int s_partition_flags; TYPE_1__ s_uspace; } ;
struct super_block {int s_blocksize_bits; } ;
struct kernel_lb_addr {size_t partitionReferenceNum; } ;
struct inode {int dummy; } ;
typedef  int sector_t ;
struct TYPE_4__ {struct udf_part_map* s_partmaps; } ;

/* Variables and functions */
 int UDF_PART_FLAG_UNALLOC_BITMAP ; 
 int UDF_PART_FLAG_UNALLOC_TABLE ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,struct kernel_lb_addr*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,struct kernel_lb_addr*,scalar_t__,scalar_t__) ; 

void FUNC4(struct super_block *sb, struct inode *inode,
		     struct kernel_lb_addr *bloc, uint32_t offset,
		     uint32_t count)
{
	uint16_t partition = bloc->partitionReferenceNum;
	struct udf_part_map *map = &FUNC0(sb)->s_partmaps[partition];

	if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_BITMAP) {
		FUNC2(sb, map->s_uspace.s_bitmap,
				       bloc, offset, count);
	} else if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_TABLE) {
		FUNC3(sb, map->s_uspace.s_table,
				      bloc, offset, count);
	}

	if (inode) {
		FUNC1(inode,
				((sector_t)count) << sb->s_blocksize_bits);
	}
}
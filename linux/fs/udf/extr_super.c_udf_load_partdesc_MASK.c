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
typedef  scalar_t__ uint16_t ;
struct udf_sb_info {int s_partitions; struct udf_part_map* s_partmaps; } ;
struct udf_part_map {scalar_t__ s_partition_num; scalar_t__ s_partition_type; } ;
struct super_block {int dummy; } ;
struct partitionDesc {int /*<<< orphan*/  partitionNumber; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int EACCES ; 
 int EAGAIN ; 
 scalar_t__ TAG_IDENT_PD ; 
 int /*<<< orphan*/  UDF_FLAG_RW_INCOMPAT ; 
 scalar_t__ UDF_METADATA_MAP25 ; 
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ UDF_SPARABLE_MAP15 ; 
 scalar_t__ UDF_TYPE1_MAP15 ; 
 scalar_t__ UDF_VIRTUAL_MAP15 ; 
 scalar_t__ UDF_VIRTUAL_MAP20 ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,int) ; 
 int FUNC7 (struct super_block*,struct partitionDesc*,int) ; 
 int FUNC8 (struct super_block*,int,int) ; 
 int FUNC9 (struct super_block*,int,int) ; 
 struct buffer_head* FUNC10 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb, sector_t block)
{
	struct buffer_head *bh;
	struct partitionDesc *p;
	struct udf_part_map *map;
	struct udf_sb_info *sbi = FUNC0(sb);
	int i, type1_idx;
	uint16_t partitionNumber;
	uint16_t ident;
	int ret;

	bh = FUNC10(sb, block, block, &ident);
	if (!bh)
		return -EAGAIN;
	if (ident != TAG_IDENT_PD) {
		ret = 0;
		goto out_bh;
	}

	p = (struct partitionDesc *)bh->b_data;
	partitionNumber = FUNC3(p->partitionNumber);

	/* First scan for TYPE1 and SPARABLE partitions */
	for (i = 0; i < sbi->s_partitions; i++) {
		map = &sbi->s_partmaps[i];
		FUNC5("Searching map: (%u == %u)\n",
			  map->s_partition_num, partitionNumber);
		if (map->s_partition_num == partitionNumber &&
		    (map->s_partition_type == UDF_TYPE1_MAP15 ||
		     map->s_partition_type == UDF_SPARABLE_MAP15))
			break;
	}

	if (i >= sbi->s_partitions) {
		FUNC5("Partition (%u) not found in partition map\n",
			  partitionNumber);
		ret = 0;
		goto out_bh;
	}

	ret = FUNC7(sb, p, i);
	if (ret < 0)
		goto out_bh;

	/*
	 * Now rescan for VIRTUAL or METADATA partitions when SPARABLE and
	 * PHYSICAL partitions are already set up
	 */
	type1_idx = i;
	map = NULL; /* supress 'maybe used uninitialized' warning */
	for (i = 0; i < sbi->s_partitions; i++) {
		map = &sbi->s_partmaps[i];

		if (map->s_partition_num == partitionNumber &&
		    (map->s_partition_type == UDF_VIRTUAL_MAP15 ||
		     map->s_partition_type == UDF_VIRTUAL_MAP20 ||
		     map->s_partition_type == UDF_METADATA_MAP25))
			break;
	}

	if (i >= sbi->s_partitions) {
		ret = 0;
		goto out_bh;
	}

	ret = FUNC7(sb, p, i);
	if (ret < 0)
		goto out_bh;

	if (map->s_partition_type == UDF_METADATA_MAP25) {
		ret = FUNC8(sb, i, type1_idx);
		if (ret < 0) {
			FUNC6(sb, "error loading MetaData partition map %d\n",
				i);
			goto out_bh;
		}
	} else {
		/*
		 * If we have a partition with virtual map, we don't handle
		 * writing to it (we overwrite blocks instead of relocating
		 * them).
		 */
		if (!FUNC4(sb)) {
			ret = -EACCES;
			goto out_bh;
		}
		FUNC1(sb, UDF_FLAG_RW_INCOMPAT);
		ret = FUNC9(sb, i, type1_idx);
		if (ret < 0)
			goto out_bh;
	}
	ret = 0;
out_bh:
	/* In case loading failed, we handle cleanup in udf_fill_super */
	FUNC2(bh);
	return ret;
}
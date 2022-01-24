#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u16 ;
struct udf_sb_info {int s_partitions; int /*<<< orphan*/  s_lvid_bh; struct udf_part_map* s_partmaps; } ;
struct udf_meta_data {int /*<<< orphan*/  s_flags; void* s_align_unit_size; void* s_alloc_unit_size; void* s_bitmap_file_loc; void* s_mirror_file_loc; void* s_meta_file_loc; } ;
struct TYPE_5__ {struct udf_meta_data s_metadata; } ;
struct udf_part_map {void* s_volumeseqnum; void* s_partition_num; int /*<<< orphan*/ * s_partition_func; int /*<<< orphan*/  s_partition_type; TYPE_1__ s_type_specific; } ;
struct TYPE_7__ {int /*<<< orphan*/  ident; scalar_t__ identSuffix; } ;
struct udfPartitionMap2 {int /*<<< orphan*/  partitionNum; int /*<<< orphan*/  volSeqNum; TYPE_3__ partIdent; } ;
struct super_block {int s_blocksize; } ;
struct sparablePartitionMap {int dummy; } ;
struct TYPE_6__ {scalar_t__ identSuffix; } ;
struct metadataPartitionMap {int flags; int /*<<< orphan*/  metadataBitmapFileLoc; int /*<<< orphan*/  metadataMirrorFileLoc; int /*<<< orphan*/  metadataFileLoc; int /*<<< orphan*/  allocUnitSize; int /*<<< orphan*/  partitionNum; TYPE_2__ partIdent; int /*<<< orphan*/  alignUnitSize; } ;
struct long_ad {int /*<<< orphan*/  extLocation; } ;
struct TYPE_8__ {scalar_t__ extLength; } ;
struct logicalVolDesc {TYPE_4__ integritySeqExt; int /*<<< orphan*/ * logicalVolContentsUse; int /*<<< orphan*/ * partitionMaps; int /*<<< orphan*/  numPartitionMaps; int /*<<< orphan*/  domainIdent; int /*<<< orphan*/  mapTableLength; } ;
struct kernel_lb_addr {int partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct genericPartitionMap1 {int /*<<< orphan*/  partitionNum; int /*<<< orphan*/  volSeqNum; } ;
struct genericPartitionMap {int partitionMapType; scalar_t__ partitionMapLength; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  MF_DUPLICATE_MD ; 
 scalar_t__ TAG_IDENT_LVD ; 
 int /*<<< orphan*/  UDF_FLAG_RW_INCOMPAT ; 
 int /*<<< orphan*/  UDF_ID_METADATA ; 
 int /*<<< orphan*/  UDF_ID_SPARABLE ; 
 int /*<<< orphan*/  UDF_ID_VIRTUAL ; 
 int /*<<< orphan*/  UDF_METADATA_MAP25 ; 
 struct udf_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDF_TYPE1_MAP15 ; 
 int /*<<< orphan*/  UDF_VIRTUAL_MAP15 ; 
 int /*<<< orphan*/  UDF_VIRTUAL_MAP20 ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__) ; 
 struct kernel_lb_addr FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,char*,unsigned int,int) ; 
 int /*<<< orphan*/ * udf_get_pblock_meta25 ; 
 int /*<<< orphan*/ * udf_get_pblock_virt15 ; 
 int /*<<< orphan*/ * udf_get_pblock_virt20 ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct super_block*,struct udf_part_map*,struct sparablePartitionMap*) ; 
 struct buffer_head* FUNC15 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC16 (struct super_block*,void*) ; 
 int FUNC17 (struct super_block*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,char*) ; 

__attribute__((used)) static int FUNC19(struct super_block *sb, sector_t block,
			       struct kernel_lb_addr *fileset)
{
	struct logicalVolDesc *lvd;
	int i, offset;
	uint8_t type;
	struct udf_sb_info *sbi = FUNC1(sb);
	struct genericPartitionMap *gpm;
	uint16_t ident;
	struct buffer_head *bh;
	unsigned int table_len;
	int ret;

	bh = FUNC15(sb, block, block, &ident);
	if (!bh)
		return -EAGAIN;
	FUNC0(ident != TAG_IDENT_LVD);
	lvd = (struct logicalVolDesc *)bh->b_data;
	table_len = FUNC5(lvd->mapTableLength);
	if (table_len > sb->s_blocksize - sizeof(*lvd)) {
		FUNC12(sb, "error loading logical volume descriptor: "
			"Partition table too long (%u > %lu)\n", table_len,
			sb->s_blocksize - sizeof(*lvd));
		ret = -EIO;
		goto out_bh;
	}

	ret = FUNC17(sb, &lvd->domainIdent,
					   "logical volume");
	if (ret)
		goto out_bh;
	ret = FUNC16(sb, FUNC5(lvd->numPartitionMaps));
	if (ret)
		goto out_bh;

	for (i = 0, offset = 0;
	     i < sbi->s_partitions && offset < table_len;
	     i++, offset += gpm->partitionMapLength) {
		struct udf_part_map *map = &sbi->s_partmaps[i];
		gpm = (struct genericPartitionMap *)
				&(lvd->partitionMaps[offset]);
		type = gpm->partitionMapType;
		if (type == 1) {
			struct genericPartitionMap1 *gpm1 =
				(struct genericPartitionMap1 *)gpm;
			map->s_partition_type = UDF_TYPE1_MAP15;
			map->s_volumeseqnum = FUNC4(gpm1->volSeqNum);
			map->s_partition_num = FUNC4(gpm1->partitionNum);
			map->s_partition_func = NULL;
		} else if (type == 2) {
			struct udfPartitionMap2 *upm2 =
						(struct udfPartitionMap2 *)gpm;
			if (!FUNC10(upm2->partIdent.ident, UDF_ID_VIRTUAL,
						FUNC9(UDF_ID_VIRTUAL))) {
				u16 suf =
					FUNC4(((__le16 *)upm2->partIdent.
							identSuffix)[0]);
				if (suf < 0x0200) {
					map->s_partition_type =
							UDF_VIRTUAL_MAP15;
					map->s_partition_func =
							udf_get_pblock_virt15;
				} else {
					map->s_partition_type =
							UDF_VIRTUAL_MAP20;
					map->s_partition_func =
							udf_get_pblock_virt20;
				}
			} else if (!FUNC10(upm2->partIdent.ident,
						UDF_ID_SPARABLE,
						FUNC9(UDF_ID_SPARABLE))) {
				ret = FUNC14(sb, map,
					(struct sparablePartitionMap *)gpm);
				if (ret < 0)
					goto out_bh;
			} else if (!FUNC10(upm2->partIdent.ident,
						UDF_ID_METADATA,
						FUNC9(UDF_ID_METADATA))) {
				struct udf_meta_data *mdata =
					&map->s_type_specific.s_metadata;
				struct metadataPartitionMap *mdm =
						(struct metadataPartitionMap *)
						&(lvd->partitionMaps[offset]);
				FUNC11("Parsing Logical vol part %d type %u  id=%s\n",
					  i, type, UDF_ID_METADATA);

				map->s_partition_type = UDF_METADATA_MAP25;
				map->s_partition_func = udf_get_pblock_meta25;

				mdata->s_meta_file_loc   =
					FUNC5(mdm->metadataFileLoc);
				mdata->s_mirror_file_loc =
					FUNC5(mdm->metadataMirrorFileLoc);
				mdata->s_bitmap_file_loc =
					FUNC5(mdm->metadataBitmapFileLoc);
				mdata->s_alloc_unit_size =
					FUNC5(mdm->allocUnitSize);
				mdata->s_align_unit_size =
					FUNC4(mdm->alignUnitSize);
				if (mdm->flags & 0x01)
					mdata->s_flags |= MF_DUPLICATE_MD;

				FUNC11("Metadata Ident suffix=0x%x\n",
					  FUNC4(*(__le16 *)
						      mdm->partIdent.identSuffix));
				FUNC11("Metadata part num=%u\n",
					  FUNC4(mdm->partitionNum));
				FUNC11("Metadata part alloc unit size=%u\n",
					  FUNC5(mdm->allocUnitSize));
				FUNC11("Metadata file loc=%u\n",
					  FUNC5(mdm->metadataFileLoc));
				FUNC11("Mirror file loc=%u\n",
					  FUNC5(mdm->metadataMirrorFileLoc));
				FUNC11("Bitmap file loc=%u\n",
					  FUNC5(mdm->metadataBitmapFileLoc));
				FUNC11("Flags: %d %u\n",
					  mdata->s_flags, mdm->flags);
			} else {
				FUNC11("Unknown ident: %s\n",
					  upm2->partIdent.ident);
				continue;
			}
			map->s_volumeseqnum = FUNC4(upm2->volSeqNum);
			map->s_partition_num = FUNC4(upm2->partitionNum);
		}
		FUNC11("Partition (%d:%u) type %u on volume %u\n",
			  i, map->s_partition_num, type, map->s_volumeseqnum);
	}

	if (fileset) {
		struct long_ad *la = (struct long_ad *)&(lvd->logicalVolContentsUse[0]);

		*fileset = FUNC7(la->extLocation);
		FUNC11("FileSet found in LogicalVolDesc at block=%u, partition=%u\n",
			  fileset->logicalBlockNum,
			  fileset->partitionReferenceNum);
	}
	if (lvd->integritySeqExt.extLength)
		FUNC13(sb, FUNC6(lvd->integritySeqExt));
	ret = 0;

	if (!sbi->s_lvid_bh) {
		/* We can't generate unique IDs without a valid LVID */
		if (FUNC8(sb)) {
			FUNC2(sb, UDF_FLAG_RW_INCOMPAT);
		} else {
			FUNC18(sb, "Damaged or missing LVID, forcing "
				     "readonly mount\n");
			ret = -EACCES;
		}
	}
out_bh:
	FUNC3(bh);
	return ret;
}
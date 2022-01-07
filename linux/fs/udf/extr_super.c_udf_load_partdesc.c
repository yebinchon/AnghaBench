
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct udf_sb_info {int s_partitions; struct udf_part_map* s_partmaps; } ;
struct udf_part_map {scalar_t__ s_partition_num; scalar_t__ s_partition_type; } ;
struct super_block {int dummy; } ;
struct partitionDesc {int partitionNumber; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sector_t ;


 int EACCES ;
 int EAGAIN ;
 scalar_t__ TAG_IDENT_PD ;
 int UDF_FLAG_RW_INCOMPAT ;
 scalar_t__ UDF_METADATA_MAP25 ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int UDF_SET_FLAG (struct super_block*,int ) ;
 scalar_t__ UDF_SPARABLE_MAP15 ;
 scalar_t__ UDF_TYPE1_MAP15 ;
 scalar_t__ UDF_VIRTUAL_MAP15 ;
 scalar_t__ UDF_VIRTUAL_MAP20 ;
 int brelse (struct buffer_head*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int sb_rdonly (struct super_block*) ;
 int udf_debug (char*,scalar_t__,...) ;
 int udf_err (struct super_block*,char*,int) ;
 int udf_fill_partdesc_info (struct super_block*,struct partitionDesc*,int) ;
 int udf_load_metadata_files (struct super_block*,int,int) ;
 int udf_load_vat (struct super_block*,int,int) ;
 struct buffer_head* udf_read_tagged (struct super_block*,int ,int ,scalar_t__*) ;

__attribute__((used)) static int udf_load_partdesc(struct super_block *sb, sector_t block)
{
 struct buffer_head *bh;
 struct partitionDesc *p;
 struct udf_part_map *map;
 struct udf_sb_info *sbi = UDF_SB(sb);
 int i, type1_idx;
 uint16_t partitionNumber;
 uint16_t ident;
 int ret;

 bh = udf_read_tagged(sb, block, block, &ident);
 if (!bh)
  return -EAGAIN;
 if (ident != TAG_IDENT_PD) {
  ret = 0;
  goto out_bh;
 }

 p = (struct partitionDesc *)bh->b_data;
 partitionNumber = le16_to_cpu(p->partitionNumber);


 for (i = 0; i < sbi->s_partitions; i++) {
  map = &sbi->s_partmaps[i];
  udf_debug("Searching map: (%u == %u)\n",
     map->s_partition_num, partitionNumber);
  if (map->s_partition_num == partitionNumber &&
      (map->s_partition_type == UDF_TYPE1_MAP15 ||
       map->s_partition_type == UDF_SPARABLE_MAP15))
   break;
 }

 if (i >= sbi->s_partitions) {
  udf_debug("Partition (%u) not found in partition map\n",
     partitionNumber);
  ret = 0;
  goto out_bh;
 }

 ret = udf_fill_partdesc_info(sb, p, i);
 if (ret < 0)
  goto out_bh;





 type1_idx = i;
 map = ((void*)0);
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

 ret = udf_fill_partdesc_info(sb, p, i);
 if (ret < 0)
  goto out_bh;

 if (map->s_partition_type == UDF_METADATA_MAP25) {
  ret = udf_load_metadata_files(sb, i, type1_idx);
  if (ret < 0) {
   udf_err(sb, "error loading MetaData partition map %d\n",
    i);
   goto out_bh;
  }
 } else {





  if (!sb_rdonly(sb)) {
   ret = -EACCES;
   goto out_bh;
  }
  UDF_SET_FLAG(sb, UDF_FLAG_RW_INCOMPAT);
  ret = udf_load_vat(sb, i, type1_idx);
  if (ret < 0)
   goto out_bh;
 }
 ret = 0;
out_bh:

 brelse(bh);
 return ret;
}

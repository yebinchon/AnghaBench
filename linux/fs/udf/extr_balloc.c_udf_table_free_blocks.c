
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct unallocSpaceEntry {int dummy; } ;
struct udf_sb_info {int s_alloc_mutex; int s_partition; struct udf_part_map* s_partmaps; } ;
struct udf_part_map {scalar_t__ s_partition_len; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_location; } ;
struct super_block {scalar_t__ s_blocksize_bits; int s_blocksize; } ;
struct short_ad {int dummy; } ;
struct long_ad {int dummy; } ;
struct kernel_lb_addr {size_t partitionReferenceNum; scalar_t__ logicalBlockNum; } ;
struct inode {int dummy; } ;
struct extent_position {int offset; int * bh; int block; } ;
typedef int int8_t ;


 scalar_t__ EXT_RECORDED_ALLOCATED ;
 scalar_t__ ICBTAG_FLAG_AD_LONG ;
 scalar_t__ ICBTAG_FLAG_AD_SHORT ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int __udf_add_aext (struct inode*,struct extent_position*,struct kernel_lb_addr*,scalar_t__,int) ;
 int brelse (int *) ;
 int get_bh (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udf_add_free_space (struct super_block*,int ,scalar_t__) ;
 int udf_debug (char*,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int udf_next_aext (struct inode*,struct extent_position*,struct kernel_lb_addr*,scalar_t__*,int) ;
 int udf_setup_indirect_aext (struct inode*,scalar_t__,struct extent_position*) ;
 int udf_write_aext (struct inode*,struct extent_position*,struct kernel_lb_addr*,scalar_t__,int) ;

__attribute__((used)) static void udf_table_free_blocks(struct super_block *sb,
      struct inode *table,
      struct kernel_lb_addr *bloc,
      uint32_t offset,
      uint32_t count)
{
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct udf_part_map *partmap;
 uint32_t start, end;
 uint32_t elen;
 struct kernel_lb_addr eloc;
 struct extent_position oepos, epos;
 int8_t etype;
 struct udf_inode_info *iinfo;

 mutex_lock(&sbi->s_alloc_mutex);
 partmap = &sbi->s_partmaps[bloc->partitionReferenceNum];
 if (bloc->logicalBlockNum + count < count ||
     (bloc->logicalBlockNum + count) > partmap->s_partition_len) {
  udf_debug("%u < %d || %u + %u > %u\n",
     bloc->logicalBlockNum, 0,
     bloc->logicalBlockNum, count,
     partmap->s_partition_len);
  goto error_return;
 }

 iinfo = UDF_I(table);
 udf_add_free_space(sb, sbi->s_partition, count);

 start = bloc->logicalBlockNum + offset;
 end = bloc->logicalBlockNum + offset + count - 1;

 epos.offset = oepos.offset = sizeof(struct unallocSpaceEntry);
 elen = 0;
 epos.block = oepos.block = iinfo->i_location;
 epos.bh = oepos.bh = ((void*)0);

 while (count &&
        (etype = udf_next_aext(table, &epos, &eloc, &elen, 1)) != -1) {
  if (((eloc.logicalBlockNum +
   (elen >> sb->s_blocksize_bits)) == start)) {
   if ((0x3FFFFFFF - elen) <
     (count << sb->s_blocksize_bits)) {
    uint32_t tmp = ((0x3FFFFFFF - elen) >>
       sb->s_blocksize_bits);
    count -= tmp;
    start += tmp;
    elen = (etype << 30) |
     (0x40000000 - sb->s_blocksize);
   } else {
    elen = (etype << 30) |
     (elen +
     (count << sb->s_blocksize_bits));
    start += count;
    count = 0;
   }
   udf_write_aext(table, &oepos, &eloc, elen, 1);
  } else if (eloc.logicalBlockNum == (end + 1)) {
   if ((0x3FFFFFFF - elen) <
     (count << sb->s_blocksize_bits)) {
    uint32_t tmp = ((0x3FFFFFFF - elen) >>
      sb->s_blocksize_bits);
    count -= tmp;
    end -= tmp;
    eloc.logicalBlockNum -= tmp;
    elen = (etype << 30) |
     (0x40000000 - sb->s_blocksize);
   } else {
    eloc.logicalBlockNum = start;
    elen = (etype << 30) |
     (elen +
     (count << sb->s_blocksize_bits));
    end -= count;
    count = 0;
   }
   udf_write_aext(table, &oepos, &eloc, elen, 1);
  }

  if (epos.bh != oepos.bh) {
   oepos.block = epos.block;
   brelse(oepos.bh);
   get_bh(epos.bh);
   oepos.bh = epos.bh;
   oepos.offset = 0;
  } else {
   oepos.offset = epos.offset;
  }
 }

 if (count) {
  int adsize;

  eloc.logicalBlockNum = start;
  elen = EXT_RECORDED_ALLOCATED |
   (count << sb->s_blocksize_bits);

  if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_SHORT)
   adsize = sizeof(struct short_ad);
  else if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_LONG)
   adsize = sizeof(struct long_ad);
  else {
   brelse(oepos.bh);
   brelse(epos.bh);
   goto error_return;
  }

  if (epos.offset + (2 * adsize) > sb->s_blocksize) {

   udf_setup_indirect_aext(table, eloc.logicalBlockNum,
      &epos);

   eloc.logicalBlockNum++;
   elen -= sb->s_blocksize;
  }


  if (elen)
   __udf_add_aext(table, &epos, &eloc, elen, 1);
 }

 brelse(epos.bh);
 brelse(oepos.bh);

error_return:
 mutex_unlock(&sbi->s_alloc_mutex);
 return;
}

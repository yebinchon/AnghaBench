
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_4__ {int s_phys_partition_ref; } ;
struct TYPE_5__ {TYPE_1__ s_metadata; } ;
struct udf_part_map {TYPE_2__ s_type_specific; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int logicalBlockNum; } ;
struct inode {struct super_block* i_sb; } ;
struct extent_position {int bh; } ;
typedef int sector_t ;
struct TYPE_6__ {struct udf_part_map* s_partmaps; } ;


 int EXT_RECORDED_ALLOCATED ;
 TYPE_3__* UDF_SB (struct super_block*) ;
 int brelse (int ) ;
 int inode_bmap (struct inode*,int,struct extent_position*,struct kernel_lb_addr*,int*,int*) ;
 int udf_get_pblock (struct super_block*,int ,int ,int) ;

__attribute__((used)) static uint32_t udf_try_read_meta(struct inode *inode, uint32_t block,
     uint16_t partition, uint32_t offset)
{
 struct super_block *sb = inode->i_sb;
 struct udf_part_map *map;
 struct kernel_lb_addr eloc;
 uint32_t elen;
 sector_t ext_offset;
 struct extent_position epos = {};
 uint32_t phyblock;

 if (inode_bmap(inode, block, &epos, &eloc, &elen, &ext_offset) !=
      (EXT_RECORDED_ALLOCATED >> 30))
  phyblock = 0xFFFFFFFF;
 else {
  map = &UDF_SB(sb)->s_partmaps[partition];

  phyblock = udf_get_pblock(sb, eloc.logicalBlockNum,
   map->s_type_specific.s_metadata.s_phys_partition_ref,
   ext_offset + offset);
 }

 brelse(epos.bh);
 return phyblock;
}

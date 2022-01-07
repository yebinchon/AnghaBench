
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct super_block {int dummy; } ;


 int udf_get_pblock_virt15 (struct super_block*,int ,int ,int ) ;

inline uint32_t udf_get_pblock_virt20(struct super_block *sb, uint32_t block,
          uint16_t partition, uint32_t offset)
{
 return udf_get_pblock_virt15(sb, block, partition, offset);
}

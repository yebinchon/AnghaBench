
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfsplus_extent {scalar_t__ block_count; scalar_t__ start_block; } ;


 scalar_t__ be32_to_cpu (scalar_t__) ;

__attribute__((used)) static u32 hfsplus_ext_lastblock(struct hfsplus_extent *ext)
{
 int i;

 ext += 7;
 for (i = 0; i < 7; ext--, i++)
  if (ext->block_count)
   break;
 return be32_to_cpu(ext->start_block) + be32_to_cpu(ext->block_count);
}

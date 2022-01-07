
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfs_extent {int count; } ;


 scalar_t__ be16_to_cpu (int ) ;

__attribute__((used)) static int hfs_ext_block_count(struct hfs_extent *ext)
{
 int i;
 u16 count = 0;

 for (i = 0; i < 3; ext++, i++)
  count += be16_to_cpu(ext->count);
 return count;
}

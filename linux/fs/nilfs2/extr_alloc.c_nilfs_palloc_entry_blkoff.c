
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int __u64 ;
struct TYPE_2__ {unsigned long mi_entries_per_block; } ;


 TYPE_1__* NILFS_MDT (struct inode const*) ;
 unsigned long nilfs_palloc_bitmap_blkoff (struct inode const*,unsigned long) ;
 unsigned long nilfs_palloc_group (struct inode const*,int ,unsigned long*) ;

__attribute__((used)) static unsigned long
nilfs_palloc_entry_blkoff(const struct inode *inode, __u64 nr)
{
 unsigned long group, group_offset;

 group = nilfs_palloc_group(inode, nr, &group_offset);

 return nilfs_palloc_bitmap_blkoff(inode, group) + 1 +
  group_offset / NILFS_MDT(inode)->mi_entries_per_block;
}

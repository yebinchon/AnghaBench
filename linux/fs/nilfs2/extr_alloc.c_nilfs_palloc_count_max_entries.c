
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct inode {int dummy; } ;


 int ERANGE ;
 int nilfs_palloc_count_desc_blocks (struct inode*,unsigned long*) ;
 scalar_t__ nilfs_palloc_entries_per_group (struct inode*) ;
 unsigned long nilfs_palloc_groups_per_desc_block (struct inode*) ;
 scalar_t__ nilfs_palloc_mdt_file_can_grow (struct inode*,unsigned long) ;
 scalar_t__ unlikely (int) ;

int nilfs_palloc_count_max_entries(struct inode *inode, u64 nused, u64 *nmaxp)
{
 unsigned long desc_blocks = 0;
 u64 entries_per_desc_block, nmax;
 int err;

 err = nilfs_palloc_count_desc_blocks(inode, &desc_blocks);
 if (unlikely(err))
  return err;

 entries_per_desc_block = (u64)nilfs_palloc_entries_per_group(inode) *
    nilfs_palloc_groups_per_desc_block(inode);
 nmax = entries_per_desc_block * desc_blocks;

 if (nused == nmax &&
   nilfs_palloc_mdt_file_can_grow(inode, desc_blocks))
  nmax += entries_per_desc_block;

 if (nused > nmax)
  return -ERANGE;

 *nmaxp = nmax;
 return 0;
}

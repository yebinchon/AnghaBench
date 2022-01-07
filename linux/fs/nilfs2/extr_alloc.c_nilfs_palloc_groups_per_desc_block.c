
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_group_desc {int dummy; } ;
struct inode {int dummy; } ;


 int i_blocksize (struct inode const*) ;

__attribute__((used)) static inline unsigned long
nilfs_palloc_groups_per_desc_block(const struct inode *inode)
{
 return i_blocksize(inode) /
  sizeof(struct nilfs_palloc_group_desc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {TYPE_1__* b_inode; } ;
struct inode {int dummy; } ;
typedef unsigned long __u64 ;
struct TYPE_2__ {unsigned long i_ino; } ;


 unsigned long NILFS_BMAP_GROUP_DIV ;
 struct inode* nilfs_bmap_get_dat (struct nilfs_bmap const*) ;
 unsigned long nilfs_palloc_entries_per_group (struct inode*) ;

__u64 nilfs_bmap_find_target_in_group(const struct nilfs_bmap *bmap)
{
 struct inode *dat = nilfs_bmap_get_dat(bmap);
 unsigned long entries_per_group = nilfs_palloc_entries_per_group(dat);
 unsigned long group = bmap->b_inode->i_ino / entries_per_group;

 return group * entries_per_group +
  (bmap->b_inode->i_ino % NILFS_BMAP_GROUP_DIV) *
  (entries_per_group / NILFS_BMAP_GROUP_DIV);
}

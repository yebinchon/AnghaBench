
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnode_of_data {int cur_level; int max_level; int inode; } ;
typedef unsigned int pgoff_t ;


 unsigned int ADDRS_PER_BLOCK (int ) ;
 long ADDRS_PER_INODE (int ) ;
 int F2FS_I_SB (int ) ;
 unsigned int NIDS_PER_BLOCK ;
 int f2fs_bug_on (int ,int) ;

pgoff_t f2fs_get_next_page_offset(struct dnode_of_data *dn, pgoff_t pgofs)
{
 const long direct_index = ADDRS_PER_INODE(dn->inode);
 const long direct_blks = ADDRS_PER_BLOCK(dn->inode);
 const long indirect_blks = ADDRS_PER_BLOCK(dn->inode) * NIDS_PER_BLOCK;
 unsigned int skipped_unit = ADDRS_PER_BLOCK(dn->inode);
 int cur_level = dn->cur_level;
 int max_level = dn->max_level;
 pgoff_t base = 0;

 if (!dn->max_level)
  return pgofs + 1;

 while (max_level-- > cur_level)
  skipped_unit *= NIDS_PER_BLOCK;

 switch (dn->max_level) {
 case 3:
  base += 2 * indirect_blks;

 case 2:
  base += 2 * direct_blks;

 case 1:
  base += direct_index;
  break;
 default:
  f2fs_bug_on(F2FS_I_SB(dn->inode), 1);
 }

 return ((pgofs - base) / skipped_unit + 1) * skipped_unit + base;
}

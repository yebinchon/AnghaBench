
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; int i_ino; } ;
struct hpfs_inode_info {unsigned int i_file_sec; unsigned int i_n_secs; unsigned int i_disk_sec; int mmu_private; } ;
struct fnode {int btree; } ;
struct buffer_head {int dummy; } ;
typedef unsigned int secno ;


 unsigned int BLOCKS (int ) ;
 unsigned int hpfs_bplus_lookup (int ,struct inode*,int *,unsigned int,struct buffer_head*) ;
 scalar_t__ hpfs_chk_sectors (int ,unsigned int,int,char*) ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 struct fnode* hpfs_map_fnode (int ,int ,struct buffer_head**) ;

__attribute__((used)) static secno hpfs_bmap(struct inode *inode, unsigned file_secno, unsigned *n_secs)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(inode);
 unsigned n, disk_secno;
 struct fnode *fnode;
 struct buffer_head *bh;
 if (BLOCKS(hpfs_i(inode)->mmu_private) <= file_secno) return 0;
 n = file_secno - hpfs_inode->i_file_sec;
 if (n < hpfs_inode->i_n_secs) {
  *n_secs = hpfs_inode->i_n_secs - n;
  return hpfs_inode->i_disk_sec + n;
 }
 if (!(fnode = hpfs_map_fnode(inode->i_sb, inode->i_ino, &bh))) return 0;
 disk_secno = hpfs_bplus_lookup(inode->i_sb, inode, &fnode->btree, file_secno, bh);
 if (disk_secno == -1) return 0;
 if (hpfs_chk_sectors(inode->i_sb, disk_secno, 1, "bmap")) return 0;
 n = file_secno - hpfs_inode->i_file_sec;
 if (n < hpfs_inode->i_n_secs) {
  *n_secs = hpfs_inode->i_n_secs - n;
  return hpfs_inode->i_disk_sec + n;
 }
 *n_secs = 1;
 return disk_secno;
}

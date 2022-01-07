
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_ino; } ;
struct nilfs_inode_info {TYPE_1__ vfs_inode; int i_bmap; struct buffer_head* i_bh; int i_state; } ;
struct nilfs_inode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int BUG_ON (int) ;
 int NILFS_I_BMAP ;
 int nilfs_bmap_write (int ,struct nilfs_inode*) ;
 struct nilfs_inode* nilfs_ifile_map_inode (struct inode*,int ,struct buffer_head*) ;
 int nilfs_ifile_unmap_inode (struct inode*,int ,struct buffer_head*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nilfs_fill_in_file_bmap(struct inode *ifile,
        struct nilfs_inode_info *ii)

{
 struct buffer_head *ibh;
 struct nilfs_inode *raw_inode;

 if (test_bit(NILFS_I_BMAP, &ii->i_state)) {
  ibh = ii->i_bh;
  BUG_ON(!ibh);
  raw_inode = nilfs_ifile_map_inode(ifile, ii->vfs_inode.i_ino,
        ibh);
  nilfs_bmap_write(ii->i_bmap, raw_inode);
  nilfs_ifile_unmap_inode(ifile, ii->vfs_inode.i_ino, ibh);
 }
}

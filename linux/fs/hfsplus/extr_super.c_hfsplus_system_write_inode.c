
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; int i_size; } ;
struct hfsplus_fork_raw {scalar_t__ total_size; } ;
struct hfsplus_vh {struct hfsplus_fork_raw attr_file; struct hfsplus_fork_raw start_file; struct hfsplus_fork_raw alloc_file; struct hfsplus_fork_raw cat_file; struct hfsplus_fork_raw ext_file; } ;
struct hfsplus_sb_info {int flags; struct hfs_btree* attr_tree; struct hfs_btree* cat_tree; struct hfs_btree* ext_tree; struct hfsplus_vh* s_vhdr; } ;
struct hfs_btree {int dummy; } ;


 int EIO ;




 struct hfsplus_sb_info* HFSPLUS_SB (int ) ;
 int HFSPLUS_SB_WRITEBACKUP ;

 scalar_t__ cpu_to_be64 (int ) ;
 int hfs_btree_write (struct hfs_btree*) ;
 int hfsplus_inode_write_fork (struct inode*,struct hfsplus_fork_raw*) ;
 int hfsplus_mark_mdb_dirty (int ) ;
 int pr_err (char*,int,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int hfsplus_system_write_inode(struct inode *inode)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(inode->i_sb);
 struct hfsplus_vh *vhdr = sbi->s_vhdr;
 struct hfsplus_fork_raw *fork;
 struct hfs_btree *tree = ((void*)0);

 switch (inode->i_ino) {
 case 129:
  fork = &vhdr->ext_file;
  tree = sbi->ext_tree;
  break;
 case 130:
  fork = &vhdr->cat_file;
  tree = sbi->cat_tree;
  break;
 case 132:
  fork = &vhdr->alloc_file;
  break;
 case 128:
  fork = &vhdr->start_file;
  break;
 case 131:
  fork = &vhdr->attr_file;
  tree = sbi->attr_tree;
  break;
 default:
  return -EIO;
 }

 if (fork->total_size != cpu_to_be64(inode->i_size)) {
  set_bit(HFSPLUS_SB_WRITEBACKUP, &sbi->flags);
  hfsplus_mark_mdb_dirty(inode->i_sb);
 }
 hfsplus_inode_write_fork(inode, fork);
 if (tree) {
  int err = hfs_btree_write(tree);

  if (err) {
   pr_err("b-tree write err: %d, ino %lu\n",
          err, inode->i_ino);
   return err;
  }
 }
 return 0;
}

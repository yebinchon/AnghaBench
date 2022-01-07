
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; int i_state; int i_sb; int i_nlink; int i_count; } ;
struct hpfs_inode_info {scalar_t__ i_dirty; int i_parent_dir; scalar_t__* i_rddir_off; } ;
struct TYPE_2__ {scalar_t__ sb_root; } ;


 int I_NEW ;
 int atomic_read (int *) ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 int hpfs_init_inode (struct inode*) ;
 int hpfs_read_inode (struct inode*) ;
 TYPE_1__* hpfs_sb (int ) ;
 int hpfs_write_inode_nolock (struct inode*) ;
 struct inode* iget_locked (int ,int ) ;
 int iput (struct inode*) ;
 int kfree (scalar_t__*) ;
 int pr_err (char*) ;
 int unlock_new_inode (struct inode*) ;

void hpfs_write_inode(struct inode *i)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(i);
 struct inode *parent;
 if (i->i_ino == hpfs_sb(i->i_sb)->sb_root) return;
 if (hpfs_inode->i_rddir_off && !atomic_read(&i->i_count)) {
  if (*hpfs_inode->i_rddir_off)
   pr_err("write_inode: some position still there\n");
  kfree(hpfs_inode->i_rddir_off);
  hpfs_inode->i_rddir_off = ((void*)0);
 }
 if (!i->i_nlink) {
  return;
 }
 parent = iget_locked(i->i_sb, hpfs_inode->i_parent_dir);
 if (parent) {
  hpfs_inode->i_dirty = 0;
  if (parent->i_state & I_NEW) {
   hpfs_init_inode(parent);
   hpfs_read_inode(parent);
   unlock_new_inode(parent);
  }
  hpfs_write_inode_nolock(i);
  iput(parent);
 }
}

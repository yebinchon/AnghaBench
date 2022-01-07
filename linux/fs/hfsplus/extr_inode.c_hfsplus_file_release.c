
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_flags; int i_ino; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int opencnt; struct inode* rsrc_inode; } ;
struct TYPE_3__ {int hidden_dir; } ;


 TYPE_2__* HFSPLUS_I (struct inode*) ;
 scalar_t__ HFSPLUS_IS_RSRC (struct inode*) ;
 TYPE_1__* HFSPLUS_SB (struct super_block*) ;
 int S_DEAD ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int hfsplus_delete_cat (int ,int ,int *) ;
 int hfsplus_delete_inode (struct inode*) ;
 int hfsplus_file_truncate (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static int hfsplus_file_release(struct inode *inode, struct file *file)
{
 struct super_block *sb = inode->i_sb;

 if (HFSPLUS_IS_RSRC(inode))
  inode = HFSPLUS_I(inode)->rsrc_inode;
 if (atomic_dec_and_test(&HFSPLUS_I(inode)->opencnt)) {
  inode_lock(inode);
  hfsplus_file_truncate(inode);
  if (inode->i_flags & S_DEAD) {
   hfsplus_delete_cat(inode->i_ino,
        HFSPLUS_SB(sb)->hidden_dir, ((void*)0));
   hfsplus_delete_inode(inode);
  }
  inode_unlock(inode);
 }
 return 0;
}

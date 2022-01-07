
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int i_size; int i_nlink; } ;


 int EXT4_IGET_SPECIAL ;
 scalar_t__ IS_ERR (struct inode*) ;
 int KERN_ERR ;
 int S_ISREG (int ) ;
 struct inode* ext4_iget (struct super_block*,unsigned int,int ) ;
 int ext4_msg (struct super_block*,int ,char*) ;
 int iput (struct inode*) ;
 int jbd_debug (int,char*,struct inode*,int ) ;
 int make_bad_inode (struct inode*) ;

__attribute__((used)) static struct inode *ext4_get_journal_inode(struct super_block *sb,
          unsigned int journal_inum)
{
 struct inode *journal_inode;






 journal_inode = ext4_iget(sb, journal_inum, EXT4_IGET_SPECIAL);
 if (IS_ERR(journal_inode)) {
  ext4_msg(sb, KERN_ERR, "no journal found");
  return ((void*)0);
 }
 if (!journal_inode->i_nlink) {
  make_bad_inode(journal_inode);
  iput(journal_inode);
  ext4_msg(sb, KERN_ERR, "journal inode is deleted");
  return ((void*)0);
 }

 jbd_debug(2, "Journal inode found at %p: %lld bytes\n",
    journal_inode, journal_inode->i_size);
 if (!S_ISREG(journal_inode->i_mode)) {
  ext4_msg(sb, KERN_ERR, "invalid journal inode");
  iput(journal_inode);
  return ((void*)0);
 }
 return journal_inode;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {struct super_block* j_private; } ;
typedef TYPE_1__ journal_t ;


 int BUG_ON (int) ;
 int KERN_ERR ;
 struct inode* ext4_get_journal_inode (struct super_block*,unsigned int) ;
 int ext4_has_feature_journal (struct super_block*) ;
 int ext4_init_journal_params (struct super_block*,TYPE_1__*) ;
 int ext4_msg (struct super_block*,int ,char*) ;
 int iput (struct inode*) ;
 TYPE_1__* jbd2_journal_init_inode (struct inode*) ;

__attribute__((used)) static journal_t *ext4_get_journal(struct super_block *sb,
       unsigned int journal_inum)
{
 struct inode *journal_inode;
 journal_t *journal;

 BUG_ON(!ext4_has_feature_journal(sb));

 journal_inode = ext4_get_journal_inode(sb, journal_inum);
 if (!journal_inode)
  return ((void*)0);

 journal = jbd2_journal_init_inode(journal_inode);
 if (!journal) {
  ext4_msg(sb, KERN_ERR, "Could not load journal inode");
  iput(journal_inode);
  return ((void*)0);
 }
 journal->j_private = sb;
 ext4_init_journal_params(sb, journal);
 return journal;
}

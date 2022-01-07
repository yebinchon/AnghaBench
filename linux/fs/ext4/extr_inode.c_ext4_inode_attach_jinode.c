
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jbd2_inode {int dummy; } ;
struct inode {int i_lock; int i_sb; } ;
struct ext4_inode_info {struct jbd2_inode* jinode; } ;
struct TYPE_2__ {int s_journal; } ;


 int ENOMEM ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 TYPE_1__* EXT4_SB (int ) ;
 int GFP_KERNEL ;
 struct jbd2_inode* jbd2_alloc_inode (int ) ;
 int jbd2_free_inode (struct jbd2_inode*) ;
 int jbd2_journal_init_jbd_inode (struct jbd2_inode*,struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

int ext4_inode_attach_jinode(struct inode *inode)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 struct jbd2_inode *jinode;

 if (ei->jinode || !EXT4_SB(inode->i_sb)->s_journal)
  return 0;

 jinode = jbd2_alloc_inode(GFP_KERNEL);
 spin_lock(&inode->i_lock);
 if (!ei->jinode) {
  if (!jinode) {
   spin_unlock(&inode->i_lock);
   return -ENOMEM;
  }
  ei->jinode = jinode;
  jbd2_journal_init_jbd_inode(ei->jinode, inode);
  jinode = ((void*)0);
 }
 spin_unlock(&inode->i_lock);
 if (unlikely(jinode != ((void*)0)))
  jbd2_free_inode(jinode);
 return 0;
}

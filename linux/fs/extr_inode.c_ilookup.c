
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* find_inode_fast (struct super_block*,struct hlist_head*,unsigned long) ;
 int hash (struct super_block*,unsigned long) ;
 int inode_hash_lock ;
 struct hlist_head* inode_hashtable ;
 int inode_unhashed (struct inode*) ;
 int iput (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int wait_on_inode (struct inode*) ;

struct inode *ilookup(struct super_block *sb, unsigned long ino)
{
 struct hlist_head *head = inode_hashtable + hash(sb, ino);
 struct inode *inode;
again:
 spin_lock(&inode_hash_lock);
 inode = find_inode_fast(sb, head, ino);
 spin_unlock(&inode_hash_lock);

 if (inode) {
  if (IS_ERR(inode))
   return ((void*)0);
  wait_on_inode(inode);
  if (unlikely(inode_unhashed(inode))) {
   iput(inode);
   goto again;
  }
 }
 return inode;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {unsigned long i_ino; int i_lock; int i_hash; int i_state; } ;
struct hlist_head {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int I_NEW ;
 struct inode* alloc_inode (struct super_block*) ;
 int destroy_inode (struct inode*) ;
 struct inode* find_inode_fast (struct super_block*,struct hlist_head*,unsigned long) ;
 int hash (struct super_block*,unsigned long) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int inode_hash_lock ;
 struct hlist_head* inode_hashtable ;
 int inode_sb_list_add (struct inode*) ;
 int inode_unhashed (struct inode*) ;
 int iput (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int wait_on_inode (struct inode*) ;

struct inode *iget_locked(struct super_block *sb, unsigned long ino)
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
  return inode;
 }

 inode = alloc_inode(sb);
 if (inode) {
  struct inode *old;

  spin_lock(&inode_hash_lock);

  old = find_inode_fast(sb, head, ino);
  if (!old) {
   inode->i_ino = ino;
   spin_lock(&inode->i_lock);
   inode->i_state = I_NEW;
   hlist_add_head(&inode->i_hash, head);
   spin_unlock(&inode->i_lock);
   inode_sb_list_add(inode);
   spin_unlock(&inode_hash_lock);




   return inode;
  }






  spin_unlock(&inode_hash_lock);
  destroy_inode(inode);
  if (IS_ERR(old))
   return ((void*)0);
  inode = old;
  wait_on_inode(inode);
  if (unlikely(inode_unhashed(inode))) {
   iput(inode);
   goto again;
  }
 }
 return inode;
}

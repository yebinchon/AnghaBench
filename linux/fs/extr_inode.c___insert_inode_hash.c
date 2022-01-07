
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; int i_hash; int i_sb; } ;
struct hlist_head {int dummy; } ;


 int hash (int ,unsigned long) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int inode_hash_lock ;
 struct hlist_head* inode_hashtable ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __insert_inode_hash(struct inode *inode, unsigned long hashval)
{
 struct hlist_head *b = inode_hashtable + hash(inode->i_sb, hashval);

 spin_lock(&inode_hash_lock);
 spin_lock(&inode->i_lock);
 hlist_add_head(&inode->i_hash, b);
 spin_unlock(&inode->i_lock);
 spin_unlock(&inode_hash_lock);
}

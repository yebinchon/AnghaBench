
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* find_inode (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),void*) ;
 int hash (struct super_block*,unsigned long) ;
 int inode_hash_lock ;
 struct hlist_head* inode_hashtable ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct inode *ilookup5_nowait(struct super_block *sb, unsigned long hashval,
  int (*test)(struct inode *, void *), void *data)
{
 struct hlist_head *head = inode_hashtable + hash(sb, hashval);
 struct inode *inode;

 spin_lock(&inode_hash_lock);
 inode = find_inode(sb, head, test, data);
 spin_unlock(&inode_hash_lock);

 return IS_ERR(inode) ? ((void*)0) : inode;
}

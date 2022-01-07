
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; int i_hash; } ;


 int hlist_del_init (int *) ;
 int inode_hash_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __remove_inode_hash(struct inode *inode)
{
 spin_lock(&inode_hash_lock);
 spin_lock(&inode->i_lock);
 hlist_del_init(&inode->i_hash);
 spin_unlock(&inode->i_lock);
 spin_unlock(&inode_hash_lock);
}

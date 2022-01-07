
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int dev_t ;


 int bdev_test ;
 int blockdev_superblock ;
 int hash (int ) ;
 struct inode* ilookup5 (int ,int ,int ,int *) ;
 int iput (struct inode*) ;
 int remove_inode_hash (struct inode*) ;

void bdev_unhash_inode(dev_t dev)
{
 struct inode *inode;

 inode = ilookup5(blockdev_superblock, hash(dev), bdev_test, &dev);
 if (inode) {
  remove_inode_hash(inode);
  iput(inode);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;


 int BLK_RW_ASYNC ;
 int ENOMEM ;
 int HZ ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int congestion_wait (int ,int) ;
 struct inode* f2fs_iget (struct super_block*,unsigned long) ;

struct inode *f2fs_iget_retry(struct super_block *sb, unsigned long ino)
{
 struct inode *inode;
retry:
 inode = f2fs_iget(sb, ino);
 if (IS_ERR(inode)) {
  if (PTR_ERR(inode) == -ENOMEM) {
   congestion_wait(BLK_RW_ASYNC, HZ/50);
   goto retry;
  }
 }
 return inode;
}

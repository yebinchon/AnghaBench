
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; int i_lock; } ;
struct block_device {struct inode* bd_inode; } ;


 int BDEVNAME_SIZE ;
 int I_DIRTY ;
 int bdevname (struct block_device*,char*) ;
 int pr_warn_ratelimited (char*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_inode_now (struct inode*,int) ;

__attribute__((used)) static void bdev_write_inode(struct block_device *bdev)
{
 struct inode *inode = bdev->bd_inode;
 int ret;

 spin_lock(&inode->i_lock);
 while (inode->i_state & I_DIRTY) {
  spin_unlock(&inode->i_lock);
  ret = write_inode_now(inode, 1);
  if (ret) {
   char name[BDEVNAME_SIZE];
   pr_warn_ratelimited("VFS: Dirty inode writeback failed "
         "for block device %s (err=%d).\n",
         bdevname(bdev, name), ret);
  }
  spin_lock(&inode->i_lock);
 }
 spin_unlock(&inode->i_lock);
}

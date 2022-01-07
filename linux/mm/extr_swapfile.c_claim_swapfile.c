
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swap_info_struct {int * bdev; int flags; int old_block_size; } ;
struct inode {TYPE_1__* i_sb; int i_mode; } ;
struct TYPE_2__ {int * s_bdev; } ;


 int EBUSY ;
 int FMODE_EXCL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 scalar_t__ IS_SWAPFILE (struct inode*) ;
 int I_BDEV (struct inode*) ;
 int PAGE_SIZE ;
 int SWP_BLKDEV ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int * bdgrab (int ) ;
 int blkdev_get (int *,int,struct swap_info_struct*) ;
 int block_size (int *) ;
 int inode_lock (struct inode*) ;
 int set_blocksize (int *,int ) ;

__attribute__((used)) static int claim_swapfile(struct swap_info_struct *p, struct inode *inode)
{
 int error;

 if (S_ISBLK(inode->i_mode)) {
  p->bdev = bdgrab(I_BDEV(inode));
  error = blkdev_get(p->bdev,
       FMODE_READ | FMODE_WRITE | FMODE_EXCL, p);
  if (error < 0) {
   p->bdev = ((void*)0);
   return error;
  }
  p->old_block_size = block_size(p->bdev);
  error = set_blocksize(p->bdev, PAGE_SIZE);
  if (error < 0)
   return error;
  p->flags |= SWP_BLKDEV;
 } else if (S_ISREG(inode->i_mode)) {
  p->bdev = inode->i_sb->s_bdev;
 }

 inode_lock(inode);
 if (IS_SWAPFILE(inode))
  return -EBUSY;

 return 0;
}

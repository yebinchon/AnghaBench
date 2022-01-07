
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bh_assoc {unsigned long blkoff; int * bh; } ;
struct inode {int dummy; } ;
typedef int spinlock_t ;


 int brelse (int *) ;
 int nilfs_mdt_delete_block (struct inode*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nilfs_palloc_delete_block(struct inode *inode, unsigned long blkoff,
         struct nilfs_bh_assoc *prev,
         spinlock_t *lock)
{
 spin_lock(lock);
 if (prev->bh && blkoff == prev->blkoff) {
  brelse(prev->bh);
  prev->bh = ((void*)0);
 }
 spin_unlock(lock);
 return nilfs_mdt_delete_block(inode, blkoff);
}

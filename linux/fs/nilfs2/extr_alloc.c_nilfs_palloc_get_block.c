
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bh_assoc {unsigned long blkoff; struct buffer_head* bh; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int spinlock_t ;


 int brelse (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int nilfs_mdt_get_block (struct inode*,unsigned long,int,void (*) (struct inode*,struct buffer_head*,void*),struct buffer_head**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nilfs_palloc_get_block(struct inode *inode, unsigned long blkoff,
      int create,
      void (*init_block)(struct inode *,
           struct buffer_head *,
           void *),
      struct buffer_head **bhp,
      struct nilfs_bh_assoc *prev,
      spinlock_t *lock)
{
 int ret;

 spin_lock(lock);
 if (prev->bh && blkoff == prev->blkoff) {
  get_bh(prev->bh);
  *bhp = prev->bh;
  spin_unlock(lock);
  return 0;
 }
 spin_unlock(lock);

 ret = nilfs_mdt_get_block(inode, blkoff, create, init_block, bhp);
 if (!ret) {
  spin_lock(lock);




  brelse(prev->bh);
  get_bh(*bhp);
  prev->bh = *bhp;
  prev->blkoff = blkoff;
  spin_unlock(lock);
 }
 return ret;
}

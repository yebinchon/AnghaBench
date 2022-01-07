
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_inode_s {unsigned long bitlock; scalar_t__ mapping_time; } ;
struct inode {int i_lock; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;


 int HZ ;
 struct orangefs_inode_s* ORANGEFS_I (struct inode*) ;
 int TASK_KILLABLE ;
 int clear_bit (int,unsigned long*) ;
 int filemap_write_and_wait (struct address_space*) ;
 int invalidate_inode_pages2 (struct address_space*) ;
 scalar_t__ jiffies ;
 int orangefs_cache_timeout_msecs ;
 int set_bit (int,unsigned long*) ;
 int smp_mb__after_atomic () ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 int time_before (scalar_t__,scalar_t__) ;
 int unmap_mapping_range (struct address_space*,int ,int ,int ) ;
 int wait_on_bit (unsigned long*,int,int ) ;
 int wake_up_bit (unsigned long*,int) ;

int orangefs_revalidate_mapping(struct inode *inode)
{
 struct orangefs_inode_s *orangefs_inode = ORANGEFS_I(inode);
 struct address_space *mapping = inode->i_mapping;
 unsigned long *bitlock = &orangefs_inode->bitlock;
 int ret;

 while (1) {
  ret = wait_on_bit(bitlock, 1, TASK_KILLABLE);
  if (ret)
   return ret;
  spin_lock(&inode->i_lock);
  if (test_bit(1, bitlock)) {
   spin_unlock(&inode->i_lock);
   continue;
  }
  if (!time_before(jiffies, orangefs_inode->mapping_time))
   break;
  spin_unlock(&inode->i_lock);
  return 0;
 }

 set_bit(1, bitlock);
 smp_wmb();
 spin_unlock(&inode->i_lock);

 unmap_mapping_range(mapping, 0, 0, 0);
 ret = filemap_write_and_wait(mapping);
 if (!ret)
  ret = invalidate_inode_pages2(mapping);

 orangefs_inode->mapping_time = jiffies +
     orangefs_cache_timeout_msecs*HZ/1000;

 clear_bit(1, bitlock);
 smp_mb__after_atomic();
 wake_up_bit(bitlock, 1);

 return ret;
}

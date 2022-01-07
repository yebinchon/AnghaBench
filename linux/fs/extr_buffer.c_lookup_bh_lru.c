
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {scalar_t__ b_blocknr; unsigned int b_size; struct block_device* b_bdev; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int * bhs; } ;


 unsigned int BH_LRU_SIZE ;
 struct buffer_head* __this_cpu_read (int ) ;
 int __this_cpu_write (int ,struct buffer_head*) ;
 int bh_lru_lock () ;
 int bh_lru_unlock () ;
 TYPE_1__ bh_lrus ;
 int check_irqs_on () ;
 int get_bh (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *
lookup_bh_lru(struct block_device *bdev, sector_t block, unsigned size)
{
 struct buffer_head *ret = ((void*)0);
 unsigned int i;

 check_irqs_on();
 bh_lru_lock();
 for (i = 0; i < BH_LRU_SIZE; i++) {
  struct buffer_head *bh = __this_cpu_read(bh_lrus.bhs[i]);

  if (bh && bh->b_blocknr == block && bh->b_bdev == bdev &&
      bh->b_size == size) {
   if (i) {
    while (i) {
     __this_cpu_write(bh_lrus.bhs[i],
      __this_cpu_read(bh_lrus.bhs[i - 1]));
     i--;
    }
    __this_cpu_write(bh_lrus.bhs[0], bh);
   }
   get_bh(bh);
   ret = bh;
   break;
  }
 }
 bh_lru_unlock();
 return ret;
}

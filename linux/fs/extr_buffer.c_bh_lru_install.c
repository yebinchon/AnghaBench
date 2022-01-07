
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct bh_lru {int * bhs; } ;


 int BH_LRU_SIZE ;
 int bh_lru_lock () ;
 int bh_lru_unlock () ;
 int bh_lrus ;
 int brelse (struct buffer_head*) ;
 int check_irqs_on () ;
 int get_bh (struct buffer_head*) ;
 int swap (struct buffer_head*,int ) ;
 struct bh_lru* this_cpu_ptr (int *) ;

__attribute__((used)) static void bh_lru_install(struct buffer_head *bh)
{
 struct buffer_head *evictee = bh;
 struct bh_lru *b;
 int i;

 check_irqs_on();
 bh_lru_lock();

 b = this_cpu_ptr(&bh_lrus);
 for (i = 0; i < BH_LRU_SIZE; i++) {
  swap(evictee, b->bhs[i]);
  if (evictee == bh) {
   bh_lru_unlock();
   return;
  }
 }

 get_bh(bh);
 bh_lru_unlock();
 brelse(evictee);
}

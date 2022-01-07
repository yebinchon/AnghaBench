
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;


 int BUG_ON (int) ;
 int clear_bit (unsigned int,void*) ;
 int memory_bm_find_bit (struct memory_bitmap*,unsigned long,void**,unsigned int*) ;

__attribute__((used)) static void memory_bm_clear_bit(struct memory_bitmap *bm, unsigned long pfn)
{
 void *addr;
 unsigned int bit;
 int error;

 error = memory_bm_find_bit(bm, pfn, &addr, &bit);
 BUG_ON(error);
 clear_bit(bit, addr);
}

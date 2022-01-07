
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma {unsigned long base_pfn; unsigned long order_per_bit; int lock; int bitmap; } ;


 int bitmap_clear (int ,unsigned long,unsigned long) ;
 unsigned long cma_bitmap_pages_to_bits (struct cma*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cma_clear_bitmap(struct cma *cma, unsigned long pfn,
        unsigned int count)
{
 unsigned long bitmap_no, bitmap_count;

 bitmap_no = (pfn - cma->base_pfn) >> cma->order_per_bit;
 bitmap_count = cma_bitmap_pages_to_bits(cma, count);

 mutex_lock(&cma->lock);
 bitmap_clear(cma->bitmap, bitmap_no, bitmap_count);
 mutex_unlock(&cma->lock);
}

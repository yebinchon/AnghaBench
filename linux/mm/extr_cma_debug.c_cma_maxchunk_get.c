
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cma {int order_per_bit; int lock; int bitmap; } ;


 unsigned long cma_bitmap_maxno (struct cma*) ;
 unsigned long find_next_bit (int ,unsigned long,unsigned long) ;
 unsigned long find_next_zero_bit (int ,unsigned long,unsigned long) ;
 unsigned long max (unsigned long,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cma_maxchunk_get(void *data, u64 *val)
{
 struct cma *cma = data;
 unsigned long maxchunk = 0;
 unsigned long start, end = 0;
 unsigned long bitmap_maxno = cma_bitmap_maxno(cma);

 mutex_lock(&cma->lock);
 for (;;) {
  start = find_next_zero_bit(cma->bitmap, bitmap_maxno, end);
  if (start >= bitmap_maxno)
   break;
  end = find_next_bit(cma->bitmap, bitmap_maxno, start);
  maxchunk = max(end - start, maxchunk);
 }
 mutex_unlock(&cma->lock);
 *val = (u64)maxchunk << cma->order_per_bit;

 return 0;
}

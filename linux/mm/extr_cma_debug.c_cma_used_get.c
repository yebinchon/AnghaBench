
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cma {int order_per_bit; int lock; int bitmap; } ;


 unsigned long bitmap_weight (int ,int) ;
 scalar_t__ cma_bitmap_maxno (struct cma*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cma_used_get(void *data, u64 *val)
{
 struct cma *cma = data;
 unsigned long used;

 mutex_lock(&cma->lock);

 used = bitmap_weight(cma->bitmap, (int)cma_bitmap_maxno(cma));
 mutex_unlock(&cma->lock);
 *val = (u64)used << cma->order_per_bit;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int* items; int id; int hash; } ;
struct crush_bucket_list {int* item_weights; int* sum_weights; TYPE_1__ h; } ;
typedef int __u64 ;


 int crush_hash32_4 (int ,int,int,int,int ) ;
 int dprintk (char*,int,...) ;

__attribute__((used)) static int bucket_list_choose(const struct crush_bucket_list *bucket,
         int x, int r)
{
 int i;

 for (i = bucket->h.size-1; i >= 0; i--) {
  __u64 w = crush_hash32_4(bucket->h.hash, x, bucket->h.items[i],
      r, bucket->h.id);
  w &= 0xffff;
  dprintk("list_choose i=%d x=%d r=%d item %d weight %x "
   "sw %x rand %llx",
   i, x, r, bucket->h.items[i], bucket->item_weights[i],
   bucket->sum_weights[i], w);
  w *= bucket->sum_weights[i];
  w = w >> 16;

  if (w < bucket->item_weights[i]) {
   return bucket->h.items[i];
  }
 }

 dprintk("bad list sums for bucket %d\n", bucket->h.id);
 return bucket->h.items[0];
}

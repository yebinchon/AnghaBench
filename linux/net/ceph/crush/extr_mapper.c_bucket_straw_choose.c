
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; int* items; int hash; } ;
struct crush_bucket_straw {int* straws; TYPE_1__ h; } ;
typedef int __u64 ;
typedef size_t __u32 ;


 int crush_hash32_3 (int ,int,int,int) ;

__attribute__((used)) static int bucket_straw_choose(const struct crush_bucket_straw *bucket,
          int x, int r)
{
 __u32 i;
 int high = 0;
 __u64 high_draw = 0;
 __u64 draw;

 for (i = 0; i < bucket->h.size; i++) {
  draw = crush_hash32_3(bucket->h.hash, x, bucket->h.items[i], r);
  draw &= 0xffff;
  draw *= bucket->straws[i];
  if (i == 0 || draw > high_draw) {
   high = i;
   high_draw = draw;
  }
 }
 return bucket->h.items[high];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crush_choose_arg {int dummy; } ;
struct TYPE_2__ {unsigned int size; int* items; int hash; } ;
struct crush_bucket_straw2 {TYPE_1__ h; } ;
typedef scalar_t__ __u32 ;
typedef scalar_t__ __s64 ;
typedef int __s32 ;


 scalar_t__ S64_MIN ;
 unsigned int crush_hash32_3 (int ,int,int ,int) ;
 scalar_t__ crush_ln (unsigned int) ;
 scalar_t__ div64_s64 (scalar_t__,scalar_t__) ;
 int dprintk (char*,scalar_t__,int ) ;
 int * get_choose_arg_ids (struct crush_bucket_straw2 const*,struct crush_choose_arg const*) ;
 scalar_t__* get_choose_arg_weights (struct crush_bucket_straw2 const*,struct crush_choose_arg const*,int) ;

__attribute__((used)) static int bucket_straw2_choose(const struct crush_bucket_straw2 *bucket,
    int x, int r,
    const struct crush_choose_arg *arg,
    int position)
{
 unsigned int i, high = 0;
 unsigned int u;
 __s64 ln, draw, high_draw = 0;
 __u32 *weights = get_choose_arg_weights(bucket, arg, position);
 __s32 *ids = get_choose_arg_ids(bucket, arg);

 for (i = 0; i < bucket->h.size; i++) {
  dprintk("weight 0x%x item %d\n", weights[i], ids[i]);
  if (weights[i]) {
   u = crush_hash32_3(bucket->h.hash, x, ids[i], r);
   u &= 0xffff;
   ln = crush_ln(u) - 0x1000000000000ll;







   draw = div64_s64(ln, weights[i]);
  } else {
   draw = S64_MIN;
  }

  if (i == 0 || draw > high_draw) {
   high = i;
   high_draw = draw;
  }
 }

 return bucket->h.items[high];
}

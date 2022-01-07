
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crush_choose_arg {int weight_set_size; TYPE_1__* weight_set; } ;
struct crush_bucket_straw2 {int * item_weights; } ;
typedef int __u32 ;
struct TYPE_2__ {int * weights; } ;



__attribute__((used)) static __u32 *get_choose_arg_weights(const struct crush_bucket_straw2 *bucket,
         const struct crush_choose_arg *arg,
         int position)
{
 if (!arg || !arg->weight_set)
  return bucket->item_weights;

 if (position >= arg->weight_set_size)
  position = arg->weight_set_size - 1;
 return arg->weight_set[position].weights;
}

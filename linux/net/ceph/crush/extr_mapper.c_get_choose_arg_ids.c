
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crush_choose_arg {int * ids; } ;
struct TYPE_2__ {int * items; } ;
struct crush_bucket_straw2 {TYPE_1__ h; } ;
typedef int __s32 ;



__attribute__((used)) static __s32 *get_choose_arg_ids(const struct crush_bucket_straw2 *bucket,
     const struct crush_choose_arg *arg)
{
 if (!arg || !arg->ids)
  return bucket->h.items;

 return arg->ids;
}

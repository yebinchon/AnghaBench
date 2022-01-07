
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdmacg_resource_pool {TYPE_1__* resources; int num_max_cnt; } ;
struct TYPE_2__ {int max; } ;


 int S32_MAX ;

__attribute__((used)) static void set_resource_limit(struct rdmacg_resource_pool *rpool,
          int index, int new_max)
{
 if (new_max == S32_MAX) {
  if (rpool->resources[index].max != S32_MAX)
   rpool->num_max_cnt++;
 } else {
  if (rpool->resources[index].max == S32_MAX)
   rpool->num_max_cnt--;
 }
 rpool->resources[index].max = new_max;
}

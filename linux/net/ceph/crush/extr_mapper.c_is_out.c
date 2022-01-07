
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_map {int dummy; } ;
typedef int __u32 ;


 int CRUSH_HASH_RJENKINS1 ;
 int crush_hash32_2 (int ,int,int) ;

__attribute__((used)) static int is_out(const struct crush_map *map,
    const __u32 *weight, int weight_max,
    int item, int x)
{
 if (item >= weight_max)
  return 1;
 if (weight[item] >= 0x10000)
  return 0;
 if (weight[item] == 0)
  return 1;
 if ((crush_hash32_2(CRUSH_HASH_RJENKINS1, x, item) & 0xffff)
     < weight[item])
  return 0;
 return 1;
}

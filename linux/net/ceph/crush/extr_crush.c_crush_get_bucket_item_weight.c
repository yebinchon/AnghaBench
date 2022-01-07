
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_bucket_uniform {int item_weight; } ;
struct crush_bucket_tree {int* node_weights; } ;
struct crush_bucket_straw2 {int* item_weights; } ;
struct crush_bucket_straw {int* item_weights; } ;
struct crush_bucket_list {int* item_weights; } ;
struct crush_bucket {scalar_t__ size; int alg; } ;
typedef scalar_t__ __u32 ;







 size_t crush_calc_tree_node (int) ;

int crush_get_bucket_item_weight(const struct crush_bucket *b, int p)
{
 if ((__u32)p >= b->size)
  return 0;

 switch (b->alg) {
 case 128:
  return ((struct crush_bucket_uniform *)b)->item_weight;
 case 132:
  return ((struct crush_bucket_list *)b)->item_weights[p];
 case 129:
  return ((struct crush_bucket_tree *)b)->node_weights[crush_calc_tree_node(p)];
 case 131:
  return ((struct crush_bucket_straw *)b)->item_weights[p];
 case 130:
  return ((struct crush_bucket_straw2 *)b)->item_weights[p];
 }
 return 0;
}

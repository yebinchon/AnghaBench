
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_bucket_uniform {int dummy; } ;
struct crush_bucket_tree {int dummy; } ;
struct crush_bucket_straw2 {int dummy; } ;
struct crush_bucket_straw {int dummy; } ;
struct crush_bucket_list {int dummy; } ;
struct crush_bucket {int alg; } ;







 int crush_destroy_bucket_list (struct crush_bucket_list*) ;
 int crush_destroy_bucket_straw (struct crush_bucket_straw*) ;
 int crush_destroy_bucket_straw2 (struct crush_bucket_straw2*) ;
 int crush_destroy_bucket_tree (struct crush_bucket_tree*) ;
 int crush_destroy_bucket_uniform (struct crush_bucket_uniform*) ;

void crush_destroy_bucket(struct crush_bucket *b)
{
 switch (b->alg) {
 case 128:
  crush_destroy_bucket_uniform((struct crush_bucket_uniform *)b);
  break;
 case 132:
  crush_destroy_bucket_list((struct crush_bucket_list *)b);
  break;
 case 129:
  crush_destroy_bucket_tree((struct crush_bucket_tree *)b);
  break;
 case 131:
  crush_destroy_bucket_straw((struct crush_bucket_straw *)b);
  break;
 case 130:
  crush_destroy_bucket_straw2((struct crush_bucket_straw2 *)b);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* items; int id; int hash; } ;
struct crush_bucket_tree {int num_nodes; int* node_weights; TYPE_1__ h; } ;
typedef int __u64 ;
typedef int __u32 ;


 scalar_t__ crush_hash32_4 (int ,int,int,int,int ) ;
 int left (int) ;
 int right (int) ;
 int terminal (int) ;

__attribute__((used)) static int bucket_tree_choose(const struct crush_bucket_tree *bucket,
         int x, int r)
{
 int n;
 __u32 w;
 __u64 t;


 n = bucket->num_nodes >> 1;

 while (!terminal(n)) {
  int l;

  w = bucket->node_weights[n];
  t = (__u64)crush_hash32_4(bucket->h.hash, x, n, r,
       bucket->h.id) * (__u64)w;
  t = t >> 32;


  l = left(n);
  if (t < bucket->node_weights[l])
   n = l;
  else
   n = right(n);
 }

 return bucket->h.items[n >> 1];
}

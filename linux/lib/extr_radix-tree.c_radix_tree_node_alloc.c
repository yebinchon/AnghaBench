
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct radix_tree_preload {scalar_t__ nr; struct radix_tree_node* nodes; } ;
struct radix_tree_node {unsigned int shift; unsigned int offset; unsigned int count; unsigned int nr_values; struct radix_tree_root* array; struct radix_tree_node* parent; } ;
typedef int gfp_t ;


 int BUG_ON (int ) ;
 int __GFP_NOWARN ;
 int gfpflags_allow_blocking (int) ;
 int in_interrupt () ;
 struct radix_tree_node* kmem_cache_alloc (int ,int) ;
 int kmemleak_update_trace (struct radix_tree_node*) ;
 int radix_tree_is_internal_node (struct radix_tree_node*) ;
 int radix_tree_node_cachep ;
 int radix_tree_preloads ;
 struct radix_tree_preload* this_cpu_ptr (int *) ;

__attribute__((used)) static struct radix_tree_node *
radix_tree_node_alloc(gfp_t gfp_mask, struct radix_tree_node *parent,
   struct radix_tree_root *root,
   unsigned int shift, unsigned int offset,
   unsigned int count, unsigned int nr_values)
{
 struct radix_tree_node *ret = ((void*)0);






 if (!gfpflags_allow_blocking(gfp_mask) && !in_interrupt()) {
  struct radix_tree_preload *rtp;






  ret = kmem_cache_alloc(radix_tree_node_cachep,
           gfp_mask | __GFP_NOWARN);
  if (ret)
   goto out;






  rtp = this_cpu_ptr(&radix_tree_preloads);
  if (rtp->nr) {
   ret = rtp->nodes;
   rtp->nodes = ret->parent;
   rtp->nr--;
  }




  kmemleak_update_trace(ret);
  goto out;
 }
 ret = kmem_cache_alloc(radix_tree_node_cachep, gfp_mask);
out:
 BUG_ON(radix_tree_is_internal_node(ret));
 if (ret) {
  ret->shift = shift;
  ret->offset = offset;
  ret->count = count;
  ret->nr_values = nr_values;
  ret->parent = parent;
  ret->array = root;
 }
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genradix_root {void* data; struct genradix_root** children; } ;
struct genradix_node {void* data; struct genradix_node** children; } ;
struct __genradix {struct genradix_root* root; } ;
typedef int gfp_t ;


 struct genradix_root* READ_ONCE (struct genradix_root*) ;
 struct genradix_root* cmpxchg_release (struct genradix_root**,struct genradix_root*,struct genradix_root*) ;
 struct genradix_root* genradix_alloc_node (int ) ;
 size_t genradix_depth_shift (unsigned int) ;
 int genradix_depth_size (unsigned int) ;
 int genradix_free_node (struct genradix_root*) ;
 unsigned int genradix_root_to_depth (struct genradix_root*) ;
 struct genradix_root* genradix_root_to_node (struct genradix_root*) ;
 size_t ilog2 (size_t) ;
 int swap (struct genradix_root*,struct genradix_root*) ;

void *__genradix_ptr_alloc(struct __genradix *radix, size_t offset,
      gfp_t gfp_mask)
{
 struct genradix_root *v = READ_ONCE(radix->root);
 struct genradix_node *n, *new_node = ((void*)0);
 unsigned level;


 while (1) {
  struct genradix_root *r = v, *new_root;

  n = genradix_root_to_node(r);
  level = genradix_root_to_depth(r);

  if (n && ilog2(offset) < genradix_depth_shift(level))
   break;

  if (!new_node) {
   new_node = genradix_alloc_node(gfp_mask);
   if (!new_node)
    return ((void*)0);
  }

  new_node->children[0] = n;
  new_root = ((struct genradix_root *)
       ((unsigned long) new_node | (n ? level + 1 : 0)));

  if ((v = cmpxchg_release(&radix->root, r, new_root)) == r) {
   v = new_root;
   new_node = ((void*)0);
  }
 }

 while (level--) {
  struct genradix_node **p =
   &n->children[offset >> genradix_depth_shift(level)];
  offset &= genradix_depth_size(level) - 1;

  n = READ_ONCE(*p);
  if (!n) {
   if (!new_node) {
    new_node = genradix_alloc_node(gfp_mask);
    if (!new_node)
     return ((void*)0);
   }

   if (!(n = cmpxchg_release(p, ((void*)0), new_node)))
    swap(n, new_node);
  }
 }

 if (new_node)
  genradix_free_node(new_node);

 return &n->data[offset];
}

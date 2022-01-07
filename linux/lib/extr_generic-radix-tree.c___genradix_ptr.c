
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genradix_root {int dummy; } ;
struct genradix_node {void* data; struct genradix_node** children; } ;
struct __genradix {int root; } ;


 struct genradix_root* READ_ONCE (int ) ;
 size_t genradix_depth_shift (unsigned int) ;
 int genradix_depth_size (unsigned int) ;
 unsigned int genradix_root_to_depth (struct genradix_root*) ;
 struct genradix_node* genradix_root_to_node (struct genradix_root*) ;
 size_t ilog2 (size_t) ;

void *__genradix_ptr(struct __genradix *radix, size_t offset)
{
 struct genradix_root *r = READ_ONCE(radix->root);
 struct genradix_node *n = genradix_root_to_node(r);
 unsigned level = genradix_root_to_depth(r);

 if (ilog2(offset) >= genradix_depth_shift(level))
  return ((void*)0);

 while (1) {
  if (!n)
   return ((void*)0);
  if (!level)
   break;

  level--;

  n = n->children[offset >> genradix_depth_shift(level)];
  offset &= genradix_depth_size(level) - 1;
 }

 return &n->data[offset];
}

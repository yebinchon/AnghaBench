
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {unsigned int** tags; } ;
struct radix_tree_iter {int tags; int next_index; } ;


 unsigned int BITS_PER_LONG ;
 int RADIX_TREE_TAG_LONGS ;
 int __radix_tree_iter_add (struct radix_tree_iter*,unsigned int) ;

__attribute__((used)) static void set_iter_tags(struct radix_tree_iter *iter,
    struct radix_tree_node *node, unsigned offset,
    unsigned tag)
{
 unsigned tag_long = offset / BITS_PER_LONG;
 unsigned tag_bit = offset % BITS_PER_LONG;

 if (!node) {
  iter->tags = 1;
  return;
 }

 iter->tags = node->tags[tag][tag_long] >> tag_bit;


 if (tag_long < RADIX_TREE_TAG_LONGS - 1) {

  if (tag_bit)
   iter->tags |= node->tags[tag][tag_long + 1] <<
      (BITS_PER_LONG - tag_bit);

  iter->next_index = __radix_tree_iter_add(iter, BITS_PER_LONG);
 }
}

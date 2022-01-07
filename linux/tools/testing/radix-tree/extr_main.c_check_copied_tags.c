
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 int assert (int) ;
 int item_tag_get (struct radix_tree_root*,unsigned long,int) ;
 int printv (int,char*,unsigned long,unsigned long,unsigned long,int,int) ;

void check_copied_tags(struct radix_tree_root *tree, unsigned long start, unsigned long end, unsigned long *idx, int count, int fromtag, int totag)
{
 int i;

 for (i = 0; i < count; i++) {


  if (idx[i] < start || idx[i] > end) {
   if (item_tag_get(tree, idx[i], totag)) {
    printv(2, "%lu-%lu: %lu, tags %d-%d\n", start,
           end, idx[i], item_tag_get(tree, idx[i],
         fromtag),
           item_tag_get(tree, idx[i], totag));
   }
   assert(!item_tag_get(tree, idx[i], totag));
   continue;
  }
  if (item_tag_get(tree, idx[i], fromtag) ^
   item_tag_get(tree, idx[i], totag)) {
   printv(2, "%lu-%lu: %lu, tags %d-%d\n", start, end,
          idx[i], item_tag_get(tree, idx[i], fromtag),
          item_tag_get(tree, idx[i], totag));
  }
  assert(!(item_tag_get(tree, idx[i], fromtag) ^
    item_tag_get(tree, idx[i], totag)));
 }
}

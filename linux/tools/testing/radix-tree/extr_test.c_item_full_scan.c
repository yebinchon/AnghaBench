
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct item {unsigned long index; } ;


 int assert (int) ;
 int radix_tree_gang_lookup (struct radix_tree_root*,void**,unsigned long,int) ;

void item_full_scan(struct radix_tree_root *root, unsigned long start,
   unsigned long nr, int chunk)
{
 struct item *items[chunk];
 unsigned long into = 0;
 unsigned long this_index = start;
 int nfound;
 int i;



 while ((nfound = radix_tree_gang_lookup(root, (void **)items, into,
     chunk))) {

  for (i = 0; i < nfound; i++) {
   assert(items[i]->index == this_index);
   this_index++;
  }


  into = this_index;
 }
 if (chunk)
  assert(this_index == start + nr);
 nfound = radix_tree_gang_lookup(root, (void **)items,
     this_index, chunk);
 assert(nfound == 0);
}

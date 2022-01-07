
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lpt_heap {int dummy; } ;
struct ubifs_lprops {int flags; int hpos; } ;
struct ubifs_info {struct ubifs_lpt_heap* lpt_heap; } ;


 int LPROPS_CAT_MASK ;
 int LPROPS_HEAP_CNT ;
 int adjust_lpt_heap (struct ubifs_info*,struct ubifs_lpt_heap*,struct ubifs_lprops*,int ,int) ;
 int ubifs_add_to_cat (struct ubifs_info*,struct ubifs_lprops*,int) ;
 int ubifs_categorize_lprops (struct ubifs_info*,struct ubifs_lprops*) ;
 int ubifs_remove_from_cat (struct ubifs_info*,struct ubifs_lprops*,int) ;

__attribute__((used)) static void change_category(struct ubifs_info *c, struct ubifs_lprops *lprops)
{
 int old_cat = lprops->flags & LPROPS_CAT_MASK;
 int new_cat = ubifs_categorize_lprops(c, lprops);

 if (old_cat == new_cat) {
  struct ubifs_lpt_heap *heap;


  if (new_cat < 1 || new_cat > LPROPS_HEAP_CNT)
   return;
  heap = &c->lpt_heap[new_cat - 1];
  adjust_lpt_heap(c, heap, lprops, lprops->hpos, new_cat);
 } else {
  ubifs_remove_from_cat(c, lprops, old_cat);
  ubifs_add_to_cat(c, lprops, new_cat);
 }
}

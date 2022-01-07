
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int unfolded; int has_children; int nr_rows; int sorted_chain; scalar_t__ leaf; } ;
struct hist_browser {int dummy; } ;


 int callchain__set_folding (int *,int) ;
 int hierarchy_set_folding (struct hist_browser*,struct hist_entry*,int) ;
 int hist_entry__init_have_children (struct hist_entry*) ;

__attribute__((used)) static void __hist_entry__set_folding(struct hist_entry *he,
          struct hist_browser *hb, bool unfold)
{
 hist_entry__init_have_children(he);
 he->unfolded = unfold ? he->has_children : 0;

 if (he->has_children) {
  int n;

  if (he->leaf)
   n = callchain__set_folding(&he->sorted_chain, unfold);
  else
   n = hierarchy_set_folding(hb, he, unfold);

  he->nr_rows = unfold ? n : 0;
 } else
  he->nr_rows = 0;
}

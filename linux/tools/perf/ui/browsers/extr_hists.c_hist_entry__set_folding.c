
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int nr_rows; int has_no_entry; scalar_t__ leaf; int depth; scalar_t__ filtered; } ;
struct hist_browser {double min_pcnt; int nr_callchain_rows; int nr_hierarchy_entries; } ;


 int __hist_entry__set_folding (struct hist_entry*,struct hist_browser*,int) ;
 double hist_entry__get_percent_limit (struct hist_entry*) ;
 int hist_entry__has_hierarchy_children (struct hist_entry*,double) ;

__attribute__((used)) static void hist_entry__set_folding(struct hist_entry *he,
        struct hist_browser *browser, bool unfold)
{
 double percent;

 percent = hist_entry__get_percent_limit(he);
 if (he->filtered || percent < browser->min_pcnt)
  return;

 __hist_entry__set_folding(he, browser, unfold);

 if (!he->depth || unfold)
  browser->nr_hierarchy_entries++;
 if (he->leaf)
  browser->nr_callchain_rows += he->nr_rows;
 else if (unfold && !hist_entry__has_hierarchy_children(he, browser->min_pcnt)) {
  browser->nr_hierarchy_entries++;
  he->has_no_entry = 1;
  he->nr_rows = 1;
 } else
  he->has_no_entry = 0;
}

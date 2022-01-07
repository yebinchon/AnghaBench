
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_entries; } ;
struct hist_browser {TYPE_1__ b; scalar_t__ nr_callchain_rows; scalar_t__ nr_hierarchy_entries; } ;


 int __hist_browser__set_folding (struct hist_browser*,int) ;
 int hist_browser__nr_entries (struct hist_browser*) ;
 int ui_browser__reset_index (TYPE_1__*) ;

__attribute__((used)) static void hist_browser__set_folding(struct hist_browser *browser, bool unfold)
{
 browser->nr_hierarchy_entries = 0;
 browser->nr_callchain_rows = 0;
 __hist_browser__set_folding(browser, unfold);

 browser->b.nr_entries = hist_browser__nr_entries(browser);

 ui_browser__reset_index(&browser->b);
}

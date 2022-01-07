
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_entries; } ;
struct hist_browser {TYPE_1__ b; int he_selection; } ;


 int hist_browser__nr_entries (struct hist_browser*) ;
 int hist_entry__set_folding (int ,struct hist_browser*,int) ;

__attribute__((used)) static void hist_browser__set_folding_selected(struct hist_browser *browser, bool unfold)
{
 if (!browser->he_selection)
  return;

 hist_entry__set_folding(browser->he_selection, browser, unfold);
 browser->b.nr_entries = hist_browser__nr_entries(browser);
}

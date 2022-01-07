
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_entries; } ;
struct hist_browser {TYPE_1__ b; scalar_t__ nr_callchain_rows; } ;


 int hist_browser__nr_entries (struct hist_browser*) ;
 int hist_browser__refresh_dimensions (TYPE_1__*) ;
 int hist_browser__update_nr_entries (struct hist_browser*) ;
 int ui_browser__reset_index (TYPE_1__*) ;

__attribute__((used)) static void hist_browser__reset(struct hist_browser *browser)
{




 browser->nr_callchain_rows = 0;

 hist_browser__update_nr_entries(browser);
 browser->b.nr_entries = hist_browser__nr_entries(browser);
 hist_browser__refresh_dimensions(&browser->b);
 ui_browser__reset_index(&browser->b);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_browser {int dummy; } ;
struct TYPE_2__ {scalar_t__ report_hierarchy; } ;


 int hists_browser__headers (struct hist_browser*) ;
 int hists_browser__hierarchy_headers (struct hist_browser*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static void hist_browser__show_headers(struct hist_browser *browser)
{
 if (symbol_conf.report_hierarchy)
  hists_browser__hierarchy_headers(browser);
 else
  hists_browser__headers(browser);
}

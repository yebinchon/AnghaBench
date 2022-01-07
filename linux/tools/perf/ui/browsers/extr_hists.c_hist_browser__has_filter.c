
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_browser {scalar_t__ c2c_filter; scalar_t__ min_pcnt; int hists; } ;
struct TYPE_2__ {scalar_t__ has_filter; } ;


 scalar_t__ hists__has_filter (int ) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static bool hist_browser__has_filter(struct hist_browser *hb)
{
 return hists__has_filter(hb->hists) || hb->min_pcnt || symbol_conf.has_filter || hb->c2c_filter;
}

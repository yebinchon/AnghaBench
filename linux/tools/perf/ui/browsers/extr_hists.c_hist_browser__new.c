
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;
struct hist_browser {int dummy; } ;


 int hist_browser__init (struct hist_browser*,struct hists*) ;
 struct hist_browser* zalloc (int) ;

struct hist_browser *hist_browser__new(struct hists *hists)
{
 struct hist_browser *browser = zalloc(sizeof(*browser));

 if (browser)
  hist_browser__init(browser, hists);

 return browser;
}

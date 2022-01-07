
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct perf_hpp_list {int nr_header_lines; } ;
struct hists {struct perf_hpp_list* hpp_list; } ;
struct TYPE_4__ {scalar_t__ width; } ;
struct hist_browser {TYPE_1__ b; struct hists* hists; } ;
typedef int headers ;


 int HE_COLORSET_ROOT ;
 int hists_browser__scnprintf_headers (struct hist_browser*,char*,int,int) ;
 int ui_browser__gotorc_title (TYPE_1__*,int,int ) ;
 int ui_browser__set_color (TYPE_1__*,int ) ;
 int ui_browser__write_nstring (TYPE_1__*,char*,scalar_t__) ;

__attribute__((used)) static void hists_browser__headers(struct hist_browser *browser)
{
 struct hists *hists = browser->hists;
 struct perf_hpp_list *hpp_list = hists->hpp_list;

 int line;

 for (line = 0; line < hpp_list->nr_header_lines; line++) {
  char headers[1024];

  hists_browser__scnprintf_headers(browser, headers,
       sizeof(headers), line);

  ui_browser__gotorc_title(&browser->b, line, 0);
  ui_browser__set_color(&browser->b, HE_COLORSET_ROOT);
  ui_browser__write_nstring(&browser->b, headers, browser->b.width + 1);
 }
}

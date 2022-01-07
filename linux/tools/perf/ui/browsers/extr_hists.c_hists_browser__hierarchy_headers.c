
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ width; } ;
struct hist_browser {TYPE_1__ b; } ;
typedef int headers ;


 int HE_COLORSET_ROOT ;
 int hists_browser__scnprintf_hierarchy_headers (struct hist_browser*,char*,int) ;
 int ui_browser__gotorc (TYPE_1__*,int ,int ) ;
 int ui_browser__set_color (TYPE_1__*,int ) ;
 int ui_browser__write_nstring (TYPE_1__*,char*,scalar_t__) ;

__attribute__((used)) static void hists_browser__hierarchy_headers(struct hist_browser *browser)
{
 char headers[1024];

 hists_browser__scnprintf_hierarchy_headers(browser, headers,
         sizeof(headers));

 ui_browser__gotorc(&browser->b, 0, 0);
 ui_browser__set_color(&browser->b, HE_COLORSET_ROOT);
 ui_browser__write_nstring(&browser->b, headers, browser->b.width + 1);
}

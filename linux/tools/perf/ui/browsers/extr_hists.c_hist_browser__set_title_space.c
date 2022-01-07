
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int extra_title_lines; } ;
struct perf_hpp_list {int nr_header_lines; } ;
struct hists {struct perf_hpp_list* hpp_list; } ;
struct hist_browser {scalar_t__ show_headers; struct hists* hists; struct ui_browser b; } ;



__attribute__((used)) static void hist_browser__set_title_space(struct hist_browser *hb)
{
 struct ui_browser *browser = &hb->b;
 struct hists *hists = hb->hists;
 struct perf_hpp_list *hpp_list = hists->hpp_list;

 browser->extra_title_lines = hb->show_headers ? hpp_list->nr_header_lines : 0;
}

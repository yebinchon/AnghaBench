
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ui_browser {scalar_t__ rows; scalar_t__ extra_title_lines; scalar_t__ index; scalar_t__ top_idx; } ;
struct perf_hpp_list {scalar_t__ nr_header_lines; } ;
struct hists {struct perf_hpp_list* hpp_list; } ;
struct hist_browser {int show_headers; struct hists* hists; struct ui_browser b; } ;



__attribute__((used)) static void hist_browser__update_rows(struct hist_browser *hb)
{
 struct ui_browser *browser = &hb->b;
 struct hists *hists = hb->hists;
 struct perf_hpp_list *hpp_list = hists->hpp_list;
 u16 index_row;

 if (!hb->show_headers) {
  browser->rows += browser->extra_title_lines;
  browser->extra_title_lines = 0;
  return;
 }

 browser->extra_title_lines = hpp_list->nr_header_lines;
 browser->rows -= browser->extra_title_lines;




 index_row = browser->index - browser->top_idx;
 if (index_row >= browser->rows)
  browser->index -= index_row - browser->rows + 1;
}

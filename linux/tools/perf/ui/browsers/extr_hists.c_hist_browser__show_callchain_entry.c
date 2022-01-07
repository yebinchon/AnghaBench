
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int width; } ;
struct hist_browser {TYPE_2__ b; TYPE_1__* selection; scalar_t__ show_dso; } ;
struct callchain_print_arg {int is_current_entry; } ;
struct TYPE_9__ {scalar_t__ sym; } ;
struct callchain_list {TYPE_1__ ms; } ;
struct TYPE_11__ {scalar_t__ src; } ;


 int HE_COLORSET_NORMAL ;
 int HE_COLORSET_SELECTED ;
 char SLSMG_RARROW_CHAR ;
 char callchain_list__folded (struct callchain_list*) ;
 TYPE_8__* symbol__annotation (scalar_t__) ;
 int ui_browser__gotorc (TYPE_2__*,unsigned short,int ) ;
 scalar_t__ ui_browser__is_current_entry (TYPE_2__*,unsigned short) ;
 int ui_browser__printf (TYPE_2__*,char*,char) ;
 int ui_browser__set_color (TYPE_2__*,int) ;
 int ui_browser__write_graph (TYPE_2__*,char) ;
 int ui_browser__write_nstring (TYPE_2__*,char const*,int) ;

__attribute__((used)) static void hist_browser__show_callchain_entry(struct hist_browser *browser,
            struct callchain_list *chain,
            const char *str, int offset,
            unsigned short row,
            struct callchain_print_arg *arg)
{
 int color, width;
 char folded_sign = callchain_list__folded(chain);
 bool show_annotated = browser->show_dso && chain->ms.sym && symbol__annotation(chain->ms.sym)->src;

 color = HE_COLORSET_NORMAL;
 width = browser->b.width - (offset + 2);
 if (ui_browser__is_current_entry(&browser->b, row)) {
  browser->selection = &chain->ms;
  color = HE_COLORSET_SELECTED;
  arg->is_current_entry = 1;
 }

 ui_browser__set_color(&browser->b, color);
 ui_browser__gotorc(&browser->b, row, 0);
 ui_browser__write_nstring(&browser->b, " ", offset);
 ui_browser__printf(&browser->b, "%c", folded_sign);
 ui_browser__write_graph(&browser->b, show_annotated ? SLSMG_RARROW_CHAR : ' ');
 ui_browser__write_nstring(&browser->b, str, width);
}

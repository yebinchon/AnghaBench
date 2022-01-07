
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sym; } ;
struct popup_action {TYPE_1__ ms; } ;
struct hist_entry {scalar_t__ branch_info; } ;
struct hist_browser {int b; TYPE_3__* hists; TYPE_2__* annotation_opts; int hbt; int env; } ;
struct evsel {int dummy; } ;
struct annotation {int src; } ;
struct TYPE_6__ {int nr_entries; } ;
struct TYPE_5__ {int objdump_path; } ;


 int CTRL (char) ;
 struct hist_entry* hist_browser__selected_entry (struct hist_browser*) ;
 struct evsel* hists_to_evsel (TYPE_3__*) ;
 int map_symbol__tui_annotate (TYPE_1__*,struct evsel*,int ,TYPE_2__*) ;
 scalar_t__ perf_env__lookup_objdump (int ,int *) ;
 struct annotation* symbol__annotation (int ) ;
 int ui_browser__handle_resize (int *) ;
 int ui_browser__update_nr_entries (int *,int ) ;

__attribute__((used)) static int
do_annotate(struct hist_browser *browser, struct popup_action *act)
{
 struct evsel *evsel;
 struct annotation *notes;
 struct hist_entry *he;
 int err;

 if (!browser->annotation_opts->objdump_path &&
     perf_env__lookup_objdump(browser->env, &browser->annotation_opts->objdump_path))
  return 0;

 notes = symbol__annotation(act->ms.sym);
 if (!notes->src)
  return 0;

 evsel = hists_to_evsel(browser->hists);
 err = map_symbol__tui_annotate(&act->ms, evsel, browser->hbt,
           browser->annotation_opts);
 he = hist_browser__selected_entry(browser);




 if ((err == 'q' || err == CTRL('c')) && he->branch_info)
  return 1;

 ui_browser__update_nr_entries(&browser->b, browser->hists->nr_entries);
 if (err)
  ui_browser__handle_resize(&browser->b);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int title ;
struct map_symbol {int map; int sym; } ;
struct hist_browser_timer {int dummy; } ;
struct evsel {TYPE_2__* evlist; } ;
struct TYPE_12__ {TYPE_6__* sym; } ;
struct TYPE_13__ {TYPE_3__ target; } ;
struct disasm_line {TYPE_4__ ops; } ;
struct annotation {int lock; } ;
struct TYPE_14__ {struct map_symbol* priv; } ;
struct annotate_browser {TYPE_5__ b; TYPE_7__* opts; int selection; } ;
struct TYPE_16__ {int percent_type; } ;
struct TYPE_15__ {int name; } ;
struct TYPE_10__ {int nr_entries; } ;
struct TYPE_11__ {TYPE_1__ core; } ;


 int SYM_TITLE_MAX_SIZE ;
 struct disasm_line* disasm_line (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sym_title (int ,int ,char*,int,int ) ;
 struct annotation* symbol__annotation (TYPE_6__*) ;
 int symbol__hists (TYPE_6__*,int ) ;
 int symbol__tui_annotate (TYPE_6__*,int ,struct evsel*,struct hist_browser_timer*,TYPE_7__*) ;
 int ui__warning (char*,int ) ;
 int ui_browser__show_title (TYPE_5__*,char*) ;
 int ui_helpline__puts (char*) ;

__attribute__((used)) static bool annotate_browser__callq(struct annotate_browser *browser,
        struct evsel *evsel,
        struct hist_browser_timer *hbt)
{
 struct map_symbol *ms = browser->b.priv;
 struct disasm_line *dl = disasm_line(browser->selection);
 struct annotation *notes;
 char title[SYM_TITLE_MAX_SIZE];

 if (!dl->ops.target.sym) {
  ui_helpline__puts("The called function was not found.");
  return 1;
 }

 notes = symbol__annotation(dl->ops.target.sym);
 pthread_mutex_lock(&notes->lock);

 if (!symbol__hists(dl->ops.target.sym, evsel->evlist->core.nr_entries)) {
  pthread_mutex_unlock(&notes->lock);
  ui__warning("Not enough memory for annotating '%s' symbol!\n",
       dl->ops.target.sym->name);
  return 1;
 }

 pthread_mutex_unlock(&notes->lock);
 symbol__tui_annotate(dl->ops.target.sym, ms->map, evsel, hbt, browser->opts);
 sym_title(ms->sym, ms->map, title, sizeof(title), browser->opts->percent_type);
 ui_browser__show_title(&browser->b, title);
 return 1;
}

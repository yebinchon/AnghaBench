
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_symbol {int map; int sym; } ;
struct hist_browser_timer {int dummy; } ;
struct evsel {int dummy; } ;
struct annotation_options {int dummy; } ;


 int symbol__tui_annotate (int ,int ,struct evsel*,struct hist_browser_timer*,struct annotation_options*) ;

int map_symbol__tui_annotate(struct map_symbol *ms, struct evsel *evsel,
        struct hist_browser_timer *hbt,
        struct annotation_options *opts)
{
 return symbol__tui_annotate(ms->sym, ms->map, evsel, hbt, opts);
}

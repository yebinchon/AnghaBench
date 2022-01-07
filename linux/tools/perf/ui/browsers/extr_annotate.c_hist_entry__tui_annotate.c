
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int ms; } ;
struct hist_browser_timer {int dummy; } ;
struct evsel {int dummy; } ;
struct annotation_options {int dummy; } ;


 int SLang_init_tty (int ,int ,int ) ;
 int SLang_reset_tty () ;
 int map_symbol__tui_annotate (int *,struct evsel*,struct hist_browser_timer*,struct annotation_options*) ;

int hist_entry__tui_annotate(struct hist_entry *he, struct evsel *evsel,
        struct hist_browser_timer *hbt,
        struct annotation_options *opts)
{

 SLang_reset_tty();
 SLang_init_tty(0, 0, 0);

 return map_symbol__tui_annotate(&he->ms, evsel, hbt, opts);
}

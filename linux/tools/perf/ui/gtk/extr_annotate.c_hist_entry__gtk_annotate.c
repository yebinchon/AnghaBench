
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map; int sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
struct hist_browser_timer {int dummy; } ;
struct evsel {int dummy; } ;


 int symbol__gtk_annotate (int ,int ,struct evsel*,struct hist_browser_timer*) ;

int hist_entry__gtk_annotate(struct hist_entry *he,
        struct evsel *evsel,
        struct hist_browser_timer *hbt)
{
 return symbol__gtk_annotate(he->ms.sym, he->ms.map, evsel, hbt);
}

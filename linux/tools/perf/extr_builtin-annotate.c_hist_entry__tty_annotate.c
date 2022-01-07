
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_annotate {int opts; int use_stdio2; } ;
struct TYPE_2__ {int map; int sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
struct evsel {int dummy; } ;


 int symbol__tty_annotate (int ,int ,struct evsel*,int *) ;
 int symbol__tty_annotate2 (int ,int ,struct evsel*,int *) ;

__attribute__((used)) static int hist_entry__tty_annotate(struct hist_entry *he,
        struct evsel *evsel,
        struct perf_annotate *ann)
{
 if (!ann->use_stdio2)
  return symbol__tty_annotate(he->ms.sym, he->ms.map, evsel, &ann->opts);

 return symbol__tty_annotate2(he->ms.sym, he->ms.map, evsel, &ann->opts);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int is_pos; int id_pos; } ;
struct evlist {int is_pos; int id_pos; } ;


 struct evsel* evlist__first (struct evlist*) ;

void perf_evlist__set_id_pos(struct evlist *evlist)
{
 struct evsel *first = evlist__first(evlist);

 evlist->id_pos = first->id_pos;
 evlist->is_pos = first->is_pos;
}

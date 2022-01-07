
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event_attr {int sample_id_all; } ;
struct TYPE_4__ {void* data; int cb; } ;
struct evsel {TYPE_2__ side_band; } ;
struct TYPE_3__ {int nr_entries; } ;
struct evlist {TYPE_1__ core; } ;
typedef int perf_evsel__sb_cb_t ;


 int evlist__add (struct evlist*,struct evsel*) ;
 int evlist__delete (struct evlist*) ;
 struct evlist* evlist__new () ;
 struct evsel* perf_evsel__new_idx (struct perf_event_attr*,int ) ;
 int pr_warning (char*) ;

int perf_evlist__add_sb_event(struct evlist **evlist,
         struct perf_event_attr *attr,
         perf_evsel__sb_cb_t cb,
         void *data)
{
 struct evsel *evsel;
 bool new_evlist = (*evlist) == ((void*)0);

 if (*evlist == ((void*)0))
  *evlist = evlist__new();
 if (*evlist == ((void*)0))
  return -1;

 if (!attr->sample_id_all) {
  pr_warning("enabling sample_id_all for all side band events\n");
  attr->sample_id_all = 1;
 }

 evsel = perf_evsel__new_idx(attr, (*evlist)->core.nr_entries);
 if (!evsel)
  goto out_err;

 evsel->side_band.cb = cb;
 evsel->side_band.data = data;
 evlist__add(*evlist, evsel);
 return 0;

out_err:
 if (new_evlist) {
  evlist__delete(*evlist);
  *evlist = ((void*)0);
 }
 return -1;
}

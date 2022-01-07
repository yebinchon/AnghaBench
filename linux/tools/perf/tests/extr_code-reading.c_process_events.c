
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct state {int dummy; } ;
struct mmap {int dummy; } ;
struct machine {int dummy; } ;
struct TYPE_2__ {int nr_mmaps; } ;
struct evlist {struct mmap* mmap; TYPE_1__ core; } ;


 int perf_mmap__consume (struct mmap*) ;
 int perf_mmap__read_done (struct mmap*) ;
 union perf_event* perf_mmap__read_event (struct mmap*) ;
 scalar_t__ perf_mmap__read_init (struct mmap*) ;
 int process_event (struct machine*,struct evlist*,union perf_event*,struct state*) ;

__attribute__((used)) static int process_events(struct machine *machine, struct evlist *evlist,
     struct state *state)
{
 union perf_event *event;
 struct mmap *md;
 int i, ret;

 for (i = 0; i < evlist->core.nr_mmaps; i++) {
  md = &evlist->mmap[i];
  if (perf_mmap__read_init(md) < 0)
   continue;

  while ((event = perf_mmap__read_event(md)) != ((void*)0)) {
   ret = process_event(machine, evlist, event, state);
   perf_mmap__consume(md);
   if (ret < 0)
    return ret;
  }
  perf_mmap__read_done(md);
 }
 return 0;
}

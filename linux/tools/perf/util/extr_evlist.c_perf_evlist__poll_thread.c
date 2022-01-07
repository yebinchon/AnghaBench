
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct mmap {int dummy; } ;
struct TYPE_6__ {int data; int (* cb ) (union perf_event*,int ) ;} ;
struct evsel {TYPE_3__ side_band; } ;
struct TYPE_5__ {int nr_mmaps; } ;
struct TYPE_4__ {scalar_t__ done; } ;
struct evlist {struct mmap* mmap; TYPE_2__ core; TYPE_1__ thread; } ;


 int CLONE_FS ;
 int evlist__poll (struct evlist*,int) ;
 struct evsel* perf_evlist__event2evsel (struct evlist*,union perf_event*) ;
 int perf_mmap__consume (struct mmap*) ;
 int perf_mmap__read_done (struct mmap*) ;
 union perf_event* perf_mmap__read_event (struct mmap*) ;
 scalar_t__ perf_mmap__read_init (struct mmap*) ;
 int pr_warning (char*) ;
 int stub1 (union perf_event*,int ) ;
 int unshare (int ) ;

__attribute__((used)) static void *perf_evlist__poll_thread(void *arg)
{
 struct evlist *evlist = arg;
 bool draining = 0;
 int i, done = 0;







 unshare(CLONE_FS);

 while (!done) {
  bool got_data = 0;

  if (evlist->thread.done)
   draining = 1;

  if (!draining)
   evlist__poll(evlist, 1000);

  for (i = 0; i < evlist->core.nr_mmaps; i++) {
   struct mmap *map = &evlist->mmap[i];
   union perf_event *event;

   if (perf_mmap__read_init(map))
    continue;
   while ((event = perf_mmap__read_event(map)) != ((void*)0)) {
    struct evsel *evsel = perf_evlist__event2evsel(evlist, event);

    if (evsel && evsel->side_band.cb)
     evsel->side_band.cb(event, evsel->side_band.data);
    else
     pr_warning("cannot locate proper evsel for the side band event\n");

    perf_mmap__consume(map);
    got_data = 1;
   }
   perf_mmap__read_done(map);
  }

  if (draining && !got_data)
   break;
 }
 return ((void*)0);
}

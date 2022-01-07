
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct record_opts {scalar_t__ overwrite; } ;
struct TYPE_2__ {int rotate; int mutex; int cond; int in; } ;
struct perf_top {TYPE_1__ qe; struct evlist* evlist; struct record_opts record_opts; } ;
struct mmap {int dummy; } ;
struct evlist {struct mmap* mmap; struct mmap* overwrite_mmap; } ;


 int last_timestamp ;
 int ordered_events__queue (int ,union perf_event*,int ,int ) ;
 int perf_evlist__parse_sample_timestamp (struct evlist*,union perf_event*,int *) ;
 int perf_mmap__consume (struct mmap*) ;
 int perf_mmap__read_done (struct mmap*) ;
 union perf_event* perf_mmap__read_event (struct mmap*) ;
 scalar_t__ perf_mmap__read_init (struct mmap*) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void perf_top__mmap_read_idx(struct perf_top *top, int idx)
{
 struct record_opts *opts = &top->record_opts;
 struct evlist *evlist = top->evlist;
 struct mmap *md;
 union perf_event *event;

 md = opts->overwrite ? &evlist->overwrite_mmap[idx] : &evlist->mmap[idx];
 if (perf_mmap__read_init(md) < 0)
  return;

 while ((event = perf_mmap__read_event(md)) != ((void*)0)) {
  int ret;

  ret = perf_evlist__parse_sample_timestamp(evlist, event, &last_timestamp);
  if (ret && ret != -1)
   break;

  ret = ordered_events__queue(top->qe.in, event, last_timestamp, 0);
  if (ret)
   break;

  perf_mmap__consume(md);

  if (top->qe.rotate) {
   pthread_mutex_lock(&top->qe.mutex);
   top->qe.rotate = 0;
   pthread_cond_signal(&top->qe.cond);
   pthread_mutex_unlock(&top->qe.mutex);
  }
 }

 perf_mmap__read_done(md);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread_stat {int dummy; } ;
struct perf_sample {int time; int tid; } ;
struct lock_stat {int discard; int nr_contended; int avg_wait_time; int wait_time_total; } ;
struct lock_seq_stat {int state; int prev_event_time; int list; } ;
struct evsel {int dummy; } ;


 size_t BROKEN_CONTENDED ;
 int BUG_ON (char*) ;
 int ENOMEM ;






 int * bad_hist ;
 int free (struct lock_seq_stat*) ;
 struct lock_seq_stat* get_seq (struct thread_stat*,void*) ;
 int list_del_init (int *) ;
 struct lock_stat* lock_stat_findnew (void*,char const*) ;
 int memcpy (void**,int *,int) ;
 int perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 char* perf_evsel__strval (struct evsel*,struct perf_sample*,char*) ;
 struct thread_stat* thread_stat_findnew (int ) ;

__attribute__((used)) static int report_lock_contended_event(struct evsel *evsel,
           struct perf_sample *sample)
{
 void *addr;
 struct lock_stat *ls;
 struct thread_stat *ts;
 struct lock_seq_stat *seq;
 const char *name = perf_evsel__strval(evsel, sample, "name");
 u64 tmp = perf_evsel__intval(evsel, sample, "lockdep_addr");

 memcpy(&addr, &tmp, sizeof(void *));

 ls = lock_stat_findnew(addr, name);
 if (!ls)
  return -ENOMEM;
 if (ls->discard)
  return 0;

 ts = thread_stat_findnew(sample->tid);
 if (!ts)
  return -ENOMEM;

 seq = get_seq(ts, addr);
 if (!seq)
  return -ENOMEM;

 switch (seq->state) {
 case 128:

  return 0;
 case 132:
  break;
 case 129:
 case 133:
 case 130:
 case 131:

  ls->discard = 1;
  bad_hist[BROKEN_CONTENDED]++;
  list_del_init(&seq->list);
  free(seq);
  goto end;
 default:
  BUG_ON("Unknown state of lock sequence found!\n");
  break;
 }

 seq->state = 131;
 ls->nr_contended++;
 ls->avg_wait_time = ls->wait_time_total/ls->nr_contended;
 seq->prev_event_time = sample->time;
end:
 return 0;
}

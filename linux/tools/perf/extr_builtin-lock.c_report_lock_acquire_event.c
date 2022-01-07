
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct thread_stat {int dummy; } ;
struct perf_sample {int time; int tid; } ;
struct lock_stat {int discard; int nr_acquire; int nr_acquired; int nr_readlock; int nr_trylock; } ;
struct lock_seq_stat {int state; int read_count; int prev_event_time; int list; } ;
struct evsel {int dummy; } ;


 size_t BROKEN_ACQUIRE ;
 int BUG_ON (char*) ;
 int ENOMEM ;
 int READ_LOCK ;






 int TRY_LOCK ;
 int * bad_hist ;
 int free (struct lock_seq_stat*) ;
 struct lock_seq_stat* get_seq (struct thread_stat*,void*) ;
 int list_del_init (int *) ;
 struct lock_stat* lock_stat_findnew (void*,char const*) ;
 int memcpy (void**,void**,int) ;
 void* perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 char* perf_evsel__strval (struct evsel*,struct perf_sample*,char*) ;
 struct thread_stat* thread_stat_findnew (int ) ;

__attribute__((used)) static int report_lock_acquire_event(struct evsel *evsel,
         struct perf_sample *sample)
{
 void *addr;
 struct lock_stat *ls;
 struct thread_stat *ts;
 struct lock_seq_stat *seq;
 const char *name = perf_evsel__strval(evsel, sample, "name");
 u64 tmp = perf_evsel__intval(evsel, sample, "lockdep_addr");
 int flag = perf_evsel__intval(evsel, sample, "flag");

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
 case 129:
  if (!flag) {
   seq->state = 132;
  } else {
   if (flag & TRY_LOCK)
    ls->nr_trylock++;
   if (flag & READ_LOCK)
    ls->nr_readlock++;
   seq->state = 130;
   seq->read_count = 1;
   ls->nr_acquired++;
  }
  break;
 case 130:
  if (flag & READ_LOCK) {
   seq->read_count++;
   ls->nr_acquired++;
   goto end;
  } else {
   goto broken;
  }
  break;
 case 133:
 case 132:
 case 131:
broken:

  ls->discard = 1;
  bad_hist[BROKEN_ACQUIRE]++;
  list_del_init(&seq->list);
  free(seq);
  goto end;
 default:
  BUG_ON("Unknown state of lock sequence found!\n");
  break;
 }

 ls->nr_acquire++;
 seq->prev_event_time = sample->time;
end:
 return 0;
}

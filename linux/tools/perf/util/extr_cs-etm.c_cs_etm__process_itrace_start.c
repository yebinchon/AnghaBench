
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tid; int pid; } ;
union perf_event {TYPE_1__ itrace_start; } ;
struct thread {int dummy; } ;
struct cs_etm_auxtrace {int machine; scalar_t__ timeless_decoding; } ;


 int ENOMEM ;
 struct thread* machine__findnew_thread (int ,int ,int ) ;
 int thread__put (struct thread*) ;

__attribute__((used)) static int cs_etm__process_itrace_start(struct cs_etm_auxtrace *etm,
     union perf_event *event)
{
 struct thread *th;

 if (etm->timeless_decoding)
  return 0;





 th = machine__findnew_thread(etm->machine,
         event->itrace_start.pid,
         event->itrace_start.tid);
 if (!th)
  return -ENOMEM;

 thread__put(th);

 return 0;
}

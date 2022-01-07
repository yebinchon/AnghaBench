
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int next_prev_tid; int next_prev_pid; } ;
struct TYPE_3__ {int misc; } ;
union perf_event {TYPE_2__ context_switch; TYPE_1__ header; } ;
struct thread {int dummy; } ;
struct cs_etm_auxtrace {int machine; scalar_t__ timeless_decoding; } ;


 int ENOMEM ;
 int PERF_RECORD_MISC_SWITCH_OUT ;
 struct thread* machine__findnew_thread (int ,int ,int ) ;
 int thread__put (struct thread*) ;

__attribute__((used)) static int cs_etm__process_switch_cpu_wide(struct cs_etm_auxtrace *etm,
        union perf_event *event)
{
 struct thread *th;
 bool out = event->header.misc & PERF_RECORD_MISC_SWITCH_OUT;





 if (etm->timeless_decoding)
  return 0;






 if (!out)
  return 0;





 th = machine__findnew_thread(etm->machine,
         event->context_switch.next_prev_pid,
         event->context_switch.next_prev_tid);
 if (!th)
  return -ENOMEM;

 thread__put(th);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_8__ {int size; } ;
struct TYPE_7__ {int regs; } ;
struct perf_sample {TYPE_4__ user_stack; TYPE_3__ user_regs; } ;
struct TYPE_5__ {int sample_type; } ;
struct TYPE_6__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct callchain_cursor {int dummy; } ;


 int PERF_SAMPLE_REGS_USER ;
 int PERF_SAMPLE_STACK_USER ;
 int unwind__get_entries (int ,struct callchain_cursor*,struct thread*,struct perf_sample*,int) ;
 int unwind_entry ;

__attribute__((used)) static int thread__resolve_callchain_unwind(struct thread *thread,
         struct callchain_cursor *cursor,
         struct evsel *evsel,
         struct perf_sample *sample,
         int max_stack)
{

 if (!((evsel->core.attr.sample_type & PERF_SAMPLE_REGS_USER) &&
       (evsel->core.attr.sample_type & PERF_SAMPLE_STACK_USER)))
  return 0;


 if ((!sample->user_regs.regs) ||
     (!sample->user_stack.size))
  return 0;

 return unwind__get_entries(unwind_entry, cursor,
       thread, sample, max_stack);
}

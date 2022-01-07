
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int unwind_entry_cb_t ;
struct thread {TYPE_2__* mg; } ;
struct perf_sample {int dummy; } ;
struct TYPE_4__ {TYPE_1__* unwind_libunwind_ops; } ;
struct TYPE_3__ {int (* get_entries ) (int ,void*,struct thread*,struct perf_sample*,int) ;} ;


 int stub1 (int ,void*,struct thread*,struct perf_sample*,int) ;

int unwind__get_entries(unwind_entry_cb_t cb, void *arg,
    struct thread *thread,
    struct perf_sample *data, int max_stack)
{
 if (thread->mg->unwind_libunwind_ops)
  return thread->mg->unwind_libunwind_ops->get_entries(cb, arg, thread, data, max_stack);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int unwind_entry_cb_t ;
struct unwind_info {int machine; struct thread* thread; struct perf_sample* sample; } ;
struct thread {TYPE_1__* mg; } ;
struct TYPE_4__ {int regs; } ;
struct perf_sample {TYPE_2__ user_regs; } ;
struct TYPE_3__ {int machine; } ;


 int EINVAL ;
 int get_entries (struct unwind_info*,int ,void*,int) ;

__attribute__((used)) static int _unwind__get_entries(unwind_entry_cb_t cb, void *arg,
   struct thread *thread,
   struct perf_sample *data, int max_stack)
{
 struct unwind_info ui = {
  .sample = data,
  .thread = thread,
  .machine = thread->mg->machine,
 };

 if (!data->user_regs.regs)
  return -EINVAL;

 if (max_stack <= 0)
  return -EINVAL;

 return get_entries(&ui, cb, arg, max_stack);
}

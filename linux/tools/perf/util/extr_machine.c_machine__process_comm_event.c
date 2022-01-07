
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comm; int tid; int pid; } ;
struct TYPE_4__ {int misc; } ;
union perf_event {TYPE_1__ comm; TYPE_2__ header; } ;
struct thread {int dummy; } ;
struct perf_sample {int time; } ;
struct machine {int comm_exec; } ;


 int PERF_RECORD_MISC_COMM_EXEC ;
 scalar_t__ __thread__set_comm (struct thread*,int ,int ,int) ;
 int dump_printf (char*) ;
 scalar_t__ dump_trace ;
 struct thread* machine__findnew_thread (struct machine*,int ,int ) ;
 int perf_event__fprintf_comm (union perf_event*,int ) ;
 int stdout ;
 int thread__put (struct thread*) ;

int machine__process_comm_event(struct machine *machine, union perf_event *event,
    struct perf_sample *sample)
{
 struct thread *thread = machine__findnew_thread(machine,
       event->comm.pid,
       event->comm.tid);
 bool exec = event->header.misc & PERF_RECORD_MISC_COMM_EXEC;
 int err = 0;

 if (exec)
  machine->comm_exec = 1;

 if (dump_trace)
  perf_event__fprintf_comm(event, stdout);

 if (thread == ((void*)0) ||
     __thread__set_comm(thread, event->comm.comm, sample->time, exec)) {
  dump_printf("problem processing PERF_RECORD_COMM, skipping event.\n");
  err = -1;
 }

 thread__put(thread);

 return err;
}

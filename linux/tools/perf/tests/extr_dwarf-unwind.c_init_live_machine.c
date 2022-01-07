
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct machine {int dummy; } ;
typedef int pid_t ;


 int getpid () ;
 int mmap_handler ;
 int perf_event__synthesize_mmap_events (int *,union perf_event*,int ,int ,int ,struct machine*,int) ;

__attribute__((used)) static int init_live_machine(struct machine *machine)
{
 union perf_event event;
 pid_t pid = getpid();

 return perf_event__synthesize_mmap_events(((void*)0), &event, pid, pid,
        mmap_handler, machine, 1);
}

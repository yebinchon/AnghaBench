
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comm; scalar_t__ tid; scalar_t__ pid; } ;
struct TYPE_4__ {scalar_t__ type; } ;
union perf_event {TYPE_1__ comm; TYPE_2__ header; } ;
struct switch_tracking {int* comm_seen; } ;
typedef scalar_t__ pid_t ;


 scalar_t__ PERF_RECORD_COMM ;
 scalar_t__ getpid () ;
 int pr_debug (char*) ;
 int pr_debug3 (char*,int ,int) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int check_comm(struct switch_tracking *switch_tracking,
        union perf_event *event, const char *comm, int nr)
{
 if (event->header.type == PERF_RECORD_COMM &&
     (pid_t)event->comm.pid == getpid() &&
     (pid_t)event->comm.tid == getpid() &&
     strcmp(event->comm.comm, comm) == 0) {
  if (switch_tracking->comm_seen[nr]) {
   pr_debug("Duplicate comm event\n");
   return -1;
  }
  switch_tracking->comm_seen[nr] = 1;
  pr_debug3("comm event: %s nr: %d\n", event->comm.comm, nr);
  return 1;
 }
 return 0;
}

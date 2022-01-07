
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;


 int SCHEDULER ;
 int dprintf (char*,int) ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 scalar_t__ sched_setscheduler (int ,int ,struct sched_param*) ;
 int stderr ;

int set_process_priority(int priority)
{
 struct sched_param param;

 dprintf("set scheduler priority to %i\n", priority);

 param.sched_priority = priority;

 if (sched_setscheduler(0, SCHEDULER, &param) < 0) {
  perror("sched_setscheduler");
  fprintf(stderr, "warning: unable to set scheduler priority\n");
  return -1;
 }

 return 0;
}

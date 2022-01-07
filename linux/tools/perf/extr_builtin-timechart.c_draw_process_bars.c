
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timechart {int numcpus; struct per_pid* all_data; } ;
struct per_pidcomm {int Y; char* comm; int total_time; struct per_pidcomm* next; int start_time; struct cpu_sample* samples; int end_time; int display; } ;
struct per_pid {int pid; struct per_pid* next; struct per_pidcomm* all; } ;
struct cpu_sample {scalar_t__ type; struct cpu_sample* next; int backtrace; int end_time; int start_time; int cpu; } ;


 scalar_t__ NSEC_PER_MSEC ;
 scalar_t__ NSEC_PER_SEC ;
 scalar_t__ TYPE_BLOCKED ;
 scalar_t__ TYPE_RUNNING ;
 scalar_t__ TYPE_WAITING ;
 int sprintf (char*,char*,char*,int,double) ;
 int svg_blocked (int,int ,int ,int ,int ) ;
 int svg_box (int,int ,int ,char*) ;
 int svg_running (int,int ,int ,int ,int ) ;
 int svg_text (int,int ,char*) ;
 int svg_waiting (int,int ,int ,int ,int ) ;

__attribute__((used)) static void draw_process_bars(struct timechart *tchart)
{
 struct per_pid *p;
 struct per_pidcomm *c;
 struct cpu_sample *sample;
 int Y = 0;

 Y = 2 * tchart->numcpus + 2;

 p = tchart->all_data;
 while (p) {
  c = p->all;
  while (c) {
   if (!c->display) {
    c->Y = 0;
    c = c->next;
    continue;
   }

   svg_box(Y, c->start_time, c->end_time, "process");
   sample = c->samples;
   while (sample) {
    if (sample->type == TYPE_RUNNING)
     svg_running(Y, sample->cpu,
          sample->start_time,
          sample->end_time,
          sample->backtrace);
    if (sample->type == TYPE_BLOCKED)
     svg_blocked(Y, sample->cpu,
          sample->start_time,
          sample->end_time,
          sample->backtrace);
    if (sample->type == TYPE_WAITING)
     svg_waiting(Y, sample->cpu,
          sample->start_time,
          sample->end_time,
          sample->backtrace);
    sample = sample->next;
   }

   if (c->comm) {
    char comm[256];
    if (c->total_time > 5000000000)
     sprintf(comm, "%s:%i (%2.2fs)", c->comm, p->pid, c->total_time / (double)NSEC_PER_SEC);
    else
     sprintf(comm, "%s:%i (%3.1fms)", c->comm, p->pid, c->total_time / (double)NSEC_PER_MSEC);

    svg_text(Y, c->start_time, comm);
   }
   c->Y = Y;
   Y++;
   c = c->next;
  }
  p = p->next;
 }
}

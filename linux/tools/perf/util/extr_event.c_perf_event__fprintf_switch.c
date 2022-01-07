
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next_prev_pid; int next_prev_tid; } ;
struct TYPE_4__ {int misc; scalar_t__ type; } ;
union perf_event {TYPE_1__ context_switch; TYPE_2__ header; } ;
typedef int FILE ;


 int PERF_RECORD_MISC_SWITCH_OUT ;
 int PERF_RECORD_MISC_SWITCH_OUT_PREEMPT ;
 scalar_t__ PERF_RECORD_SWITCH ;
 size_t fprintf (int *,char*,char const*,...) ;

size_t perf_event__fprintf_switch(union perf_event *event, FILE *fp)
{
 bool out = event->header.misc & PERF_RECORD_MISC_SWITCH_OUT;
 const char *in_out = !out ? "IN         " :
  !(event->header.misc & PERF_RECORD_MISC_SWITCH_OUT_PREEMPT) ?
        "OUT        " : "OUT preempt";

 if (event->header.type == PERF_RECORD_SWITCH)
  return fprintf(fp, " %s\n", in_out);

 return fprintf(fp, " %s  %s pid/tid: %5u/%-5u\n",
         in_out, out ? "next" : "prev",
         event->context_switch.next_prev_pid,
         event->context_switch.next_prev_tid);
}

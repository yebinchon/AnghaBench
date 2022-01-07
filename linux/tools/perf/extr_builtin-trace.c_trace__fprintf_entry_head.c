
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace {scalar_t__ show_duration; scalar_t__ show_tstamp; } ;
struct thread {int dummy; } ;
typedef int FILE ;


 scalar_t__ fprintf_duration (int ,int,int *) ;
 size_t trace__fprintf_comm_tid (struct trace*,struct thread*,int *) ;
 size_t trace__fprintf_tstamp (struct trace*,int ,int *) ;

__attribute__((used)) static size_t trace__fprintf_entry_head(struct trace *trace, struct thread *thread,
     u64 duration, bool duration_calculated, u64 tstamp, FILE *fp)
{
 size_t printed = 0;

 if (trace->show_tstamp)
  printed = trace__fprintf_tstamp(trace, tstamp, fp);
 if (trace->show_duration)
  printed += fprintf_duration(duration, duration_calculated, fp);
 return printed + trace__fprintf_comm_tid(trace, thread, fp);
}

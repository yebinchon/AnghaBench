
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct perf_event {int ns; struct perf_event* parent; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int __task_pid_nr_ns (struct task_struct*,int,int ) ;
 int pid_alive (struct task_struct*) ;

__attribute__((used)) static u32 perf_event_pid_type(struct perf_event *event, struct task_struct *p,
    enum pid_type type)
{
 u32 nr;



 if (event->parent)
  event = event->parent;

 nr = __task_pid_nr_ns(p, type, event->ns);

 if (!nr && !pid_alive(p))
  nr = -1;
 return nr;
}

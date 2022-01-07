
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct perf_event {int dummy; } ;


 int PIDTYPE_TGID ;
 int perf_event_pid_type (struct perf_event*,struct task_struct*,int ) ;

__attribute__((used)) static u32 perf_event_pid(struct perf_event *event, struct task_struct *p)
{
 return perf_event_pid_type(event, p, PIDTYPE_TGID);
}

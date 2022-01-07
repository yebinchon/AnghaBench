
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upid {int nr; struct pid_namespace* ns; } ;
struct pid_namespace {size_t level; } ;
struct pid {size_t level; struct upid* numbers; } ;
typedef int pid_t ;



pid_t pid_nr_ns(struct pid *pid, struct pid_namespace *ns)
{
 struct upid *upid;
 pid_t nr = 0;

 if (pid && ns->level <= pid->level) {
  upid = &pid->numbers[ns->level];
  if (upid->ns == ns)
   nr = upid->nr;
 }
 return nr;
}

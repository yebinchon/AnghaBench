
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {scalar_t__ bacct; struct pid_namespace* parent; } ;


 int current ;
 int slow_acct_process (struct pid_namespace*) ;
 struct pid_namespace* task_active_pid_ns (int ) ;
 scalar_t__ unlikely (struct pid_namespace*) ;

void acct_process(void)
{
 struct pid_namespace *ns;






 for (ns = task_active_pid_ns(current); ns != ((void*)0); ns = ns->parent) {
  if (ns->bacct)
   break;
 }
 if (unlikely(ns))
  slow_acct_process(ns);
}

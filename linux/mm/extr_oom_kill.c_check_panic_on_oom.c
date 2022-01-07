
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oom_control {scalar_t__ constraint; } ;


 scalar_t__ CONSTRAINT_NONE ;
 int dump_header (struct oom_control*,int *) ;
 scalar_t__ is_sysrq_oom (struct oom_control*) ;
 scalar_t__ likely (int) ;
 int panic (char*,char*) ;
 int sysctl_panic_on_oom ;

__attribute__((used)) static void check_panic_on_oom(struct oom_control *oc)
{
 if (likely(!sysctl_panic_on_oom))
  return;
 if (sysctl_panic_on_oom != 2) {





  if (oc->constraint != CONSTRAINT_NONE)
   return;
 }

 if (is_sysrq_oom(oc))
  return;
 dump_header(oc, ((void*)0));
 panic("Out of memory: %s panic_on_oom is enabled\n",
  sysctl_panic_on_oom == 2 ? "compulsory" : "system-wide");
}

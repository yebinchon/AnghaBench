
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {int flags; int * cpu_qstats; int * cpu_bstats; } ;


 int TCQ_F_CPUSTATS ;
 int TCQ_F_NOLOCK ;
 int free_percpu (int *) ;

__attribute__((used)) static void qdisc_clear_nolock(struct Qdisc *sch)
{
 sch->flags &= ~TCQ_F_NOLOCK;
 if (!(sch->flags & TCQ_F_CPUSTATS))
  return;

 free_percpu(sch->cpu_bstats);
 free_percpu(sch->cpu_qstats);
 sch->cpu_bstats = ((void*)0);
 sch->cpu_qstats = ((void*)0);
 sch->flags &= ~TCQ_F_CPUSTATS;
}

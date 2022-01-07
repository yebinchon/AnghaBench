
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ maj_flt; scalar_t__ min_flt; scalar_t__ nivcsw; scalar_t__ nvcsw; } ;
struct rusage {int ru_oublock; int ru_inblock; int ru_majflt; int ru_minflt; int ru_nivcsw; int ru_nvcsw; } ;


 scalar_t__ task_io_get_inblock (struct task_struct*) ;
 scalar_t__ task_io_get_oublock (struct task_struct*) ;

__attribute__((used)) static void accumulate_thread_rusage(struct task_struct *t, struct rusage *r)
{
 r->ru_nvcsw += t->nvcsw;
 r->ru_nivcsw += t->nivcsw;
 r->ru_minflt += t->min_flt;
 r->ru_majflt += t->maj_flt;
 r->ru_inblock += task_io_get_inblock(t);
 r->ru_oublock += task_io_get_oublock(t);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct task_struct {TYPE_1__* signal; } ;
struct task_cputime {int dummy; } ;
struct TYPE_2__ {int prev_cputime; } ;


 int cputime_adjust (struct task_cputime*,int *,int *,int *) ;
 int thread_group_cputime (struct task_struct*,struct task_cputime*) ;

void thread_group_cputime_adjusted(struct task_struct *p, u64 *ut, u64 *st)
{
 struct task_cputime cputime;

 thread_group_cputime(p, &cputime);
 cputime_adjust(&cputime, &p->signal->prev_cputime, ut, st);
}

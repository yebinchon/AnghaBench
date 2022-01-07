
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_cputime_atomic {int sum_exec_runtime; int stime; int utime; } ;
struct task_cputime {int sum_exec_runtime; int stime; int utime; } ;


 int __update_gt_cputime (int *,int ) ;

__attribute__((used)) static void update_gt_cputime(struct task_cputime_atomic *cputime_atomic,
         struct task_cputime *sum)
{
 __update_gt_cputime(&cputime_atomic->utime, sum->utime);
 __update_gt_cputime(&cputime_atomic->stime, sum->stime);
 __update_gt_cputime(&cputime_atomic->sum_exec_runtime, sum->sum_exec_runtime);
}

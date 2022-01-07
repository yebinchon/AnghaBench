
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int dummy; } ;
struct task_cputime {int sum_exec_runtime; int utime; int stime; } ;


 int store_samples (int *,int ,int ,int ) ;
 int thread_group_cputime (struct task_struct*,struct task_cputime*) ;

__attribute__((used)) static void __thread_group_cputime(struct task_struct *tsk, u64 *samples)
{
 struct task_cputime ct;

 thread_group_cputime(tsk, &ct);
 store_samples(samples, ct.stime, ct.utime, ct.sum_exec_runtime);
}

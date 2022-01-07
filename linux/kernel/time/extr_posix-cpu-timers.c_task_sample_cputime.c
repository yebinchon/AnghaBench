
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int sum_exec_runtime; } ;
struct task_struct {TYPE_1__ se; } ;


 int store_samples (int *,int ,int ,int ) ;
 int task_cputime (struct task_struct*,int *,int *) ;

__attribute__((used)) static void task_sample_cputime(struct task_struct *p, u64 *samples)
{
 u64 stime, utime;

 task_cputime(p, &utime, &stime);
 store_samples(samples, stime, utime, p->se.sum_exec_runtime);
}

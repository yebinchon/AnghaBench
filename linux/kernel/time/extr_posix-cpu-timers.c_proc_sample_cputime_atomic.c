
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_cputime_atomic {int sum_exec_runtime; int stime; int utime; } ;


 int atomic64_read (int *) ;
 int store_samples (int *,int ,int ,int ) ;

__attribute__((used)) static void proc_sample_cputime_atomic(struct task_cputime_atomic *at,
           u64 *samples)
{
 u64 stime, utime, rtime;

 utime = atomic64_read(&at->utime);
 stime = atomic64_read(&at->stime);
 rtime = atomic64_read(&at->sum_exec_runtime);
 store_samples(samples, stime, utime, rtime);
}

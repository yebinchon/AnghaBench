
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {int gtime; int utime; } ;
struct TYPE_2__ {scalar_t__* cpustat; } ;


 size_t CPUTIME_GUEST ;
 size_t CPUTIME_GUEST_NICE ;
 size_t CPUTIME_NICE ;
 size_t CPUTIME_USER ;
 int account_group_user_time (struct task_struct*,scalar_t__) ;
 TYPE_1__* kcpustat_this_cpu ;
 scalar_t__ task_nice (struct task_struct*) ;

void account_guest_time(struct task_struct *p, u64 cputime)
{
 u64 *cpustat = kcpustat_this_cpu->cpustat;


 p->utime += cputime;
 account_group_user_time(p, cputime);
 p->gtime += cputime;


 if (task_nice(p) > 0) {
  cpustat[CPUTIME_NICE] += cputime;
  cpustat[CPUTIME_GUEST_NICE] += cputime;
 } else {
  cpustat[CPUTIME_USER] += cputime;
  cpustat[CPUTIME_GUEST] += cputime;
 }
}

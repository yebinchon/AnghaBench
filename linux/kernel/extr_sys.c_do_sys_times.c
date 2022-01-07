
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct tms {void* tms_cstime; void* tms_cutime; void* tms_stime; void* tms_utime; } ;
struct TYPE_5__ {TYPE_1__* signal; } ;
struct TYPE_4__ {int cstime; int cutime; } ;


 TYPE_2__* current ;
 void* nsec_to_clock_t (int ) ;
 int thread_group_cputime_adjusted (TYPE_2__*,int *,int *) ;

__attribute__((used)) static void do_sys_times(struct tms *tms)
{
 u64 tgutime, tgstime, cutime, cstime;

 thread_group_cputime_adjusted(current, &tgutime, &tgstime);
 cutime = current->signal->cutime;
 cstime = current->signal->cstime;
 tms->tms_utime = nsec_to_clock_t(tgutime);
 tms->tms_stime = nsec_to_clock_t(tgstime);
 tms->tms_cutime = nsec_to_clock_t(cutime);
 tms->tms_cstime = nsec_to_clock_t(cstime);
}

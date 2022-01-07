
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_cputimers {int dummy; } ;
struct signal_struct {TYPE_1__* rlim; struct posix_cputimers posix_cputimers; } ;
struct TYPE_2__ {int rlim_cur; } ;


 unsigned long READ_ONCE (int ) ;
 size_t RLIMIT_CPU ;
 int posix_cputimers_group_init (struct posix_cputimers*,unsigned long) ;

__attribute__((used)) static void posix_cpu_timers_init_group(struct signal_struct *sig)
{
 struct posix_cputimers *pct = &sig->posix_cputimers;
 unsigned long cpu_limit;

 cpu_limit = READ_ONCE(sig->rlim[RLIMIT_CPU].rlim_cur);
 posix_cputimers_group_init(pct, cpu_limit);
}

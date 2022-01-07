
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct posix_cputimers {struct posix_cputimer_base* bases; } ;
struct posix_cputimer_base {int tqhead; int nextevt; } ;
struct list_head {int dummy; } ;


 int CPUCLOCK_MAX ;
 int collect_timerqueue (int *,struct list_head*,int ) ;

__attribute__((used)) static void collect_posix_cputimers(struct posix_cputimers *pct, u64 *samples,
        struct list_head *firing)
{
 struct posix_cputimer_base *base = pct->bases;
 int i;

 for (i = 0; i < CPUCLOCK_MAX; i++, base++) {
  base->nextevt = collect_timerqueue(&base->tqhead, firing,
          samples[i]);
 }
}

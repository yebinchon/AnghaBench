
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct posix_cputimers {TYPE_1__* bases; } ;
struct TYPE_2__ {scalar_t__ const nextevt; } ;


 int CPUCLOCK_MAX ;

__attribute__((used)) static inline bool
task_cputimers_expired(const u64 *samples, struct posix_cputimers *pct)
{
 int i;

 for (i = 0; i < CPUCLOCK_MAX; i++) {
  if (samples[i] >= pct->bases[i].nextevt)
   return 1;
 }
 return 0;
}

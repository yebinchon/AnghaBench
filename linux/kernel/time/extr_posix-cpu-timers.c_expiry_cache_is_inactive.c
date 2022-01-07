
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_cputimers {TYPE_1__* bases; } ;
struct TYPE_2__ {int nextevt; } ;


 size_t CPUCLOCK_PROF ;
 size_t CPUCLOCK_SCHED ;
 size_t CPUCLOCK_VIRT ;

__attribute__((used)) static inline bool expiry_cache_is_inactive(const struct posix_cputimers *pct)
{
 return !(~pct->bases[CPUCLOCK_PROF].nextevt |
   ~pct->bases[CPUCLOCK_VIRT].nextevt |
   ~pct->bases[CPUCLOCK_SCHED].nextevt);
}

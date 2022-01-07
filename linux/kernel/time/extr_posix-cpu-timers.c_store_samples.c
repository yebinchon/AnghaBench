
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 size_t CPUCLOCK_PROF ;
 size_t CPUCLOCK_SCHED ;
 size_t CPUCLOCK_VIRT ;

__attribute__((used)) static inline void store_samples(u64 *samples, u64 stime, u64 utime, u64 rtime)
{
 samples[CPUCLOCK_PROF] = stime + utime;
 samples[CPUCLOCK_VIRT] = utime;
 samples[CPUCLOCK_SCHED] = rtime;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int NSEC_PER_SEC ;

__attribute__((used)) static inline uint64_t
timespec_to_ns(const struct timespec *ts)
{
        return ((uint64_t) ts->tv_sec * NSEC_PER_SEC) + ts->tv_nsec;
}

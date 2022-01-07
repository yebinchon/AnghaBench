
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit64 {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;
struct rlimit {unsigned long rlim_cur; unsigned long rlim_max; } ;


 void* RLIM_INFINITY ;
 scalar_t__ rlim64_is_infinity (scalar_t__) ;

__attribute__((used)) static void rlim64_to_rlim(const struct rlimit64 *rlim64, struct rlimit *rlim)
{
 if (rlim64_is_infinity(rlim64->rlim_cur))
  rlim->rlim_cur = RLIM_INFINITY;
 else
  rlim->rlim_cur = (unsigned long)rlim64->rlim_cur;
 if (rlim64_is_infinity(rlim64->rlim_max))
  rlim->rlim_max = RLIM_INFINITY;
 else
  rlim->rlim_max = (unsigned long)rlim64->rlim_max;
}

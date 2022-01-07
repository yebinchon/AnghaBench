
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit64 {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;


 void* RLIM64_INFINITY ;
 scalar_t__ RLIM_INFINITY ;

__attribute__((used)) static void rlim_to_rlim64(const struct rlimit *rlim, struct rlimit64 *rlim64)
{
 if (rlim->rlim_cur == RLIM_INFINITY)
  rlim64->rlim_cur = RLIM64_INFINITY;
 else
  rlim64->rlim_cur = rlim->rlim_cur;
 if (rlim->rlim_max == RLIM_INFINITY)
  rlim64->rlim_max = RLIM64_INFINITY;
 else
  rlim64->rlim_max = rlim->rlim_max;
}

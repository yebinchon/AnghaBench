
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static bool cycle_between(u64 before, u64 test, u64 after)
{
 if (test > before && test < after)
  return 1;
 if (test < before && before > after)
  return 1;
 return 0;
}

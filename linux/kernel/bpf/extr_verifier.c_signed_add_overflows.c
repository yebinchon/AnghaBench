
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;



__attribute__((used)) static bool signed_add_overflows(s64 a, s64 b)
{

 s64 res = (s64)((u64)a + (u64)b);

 if (b < 0)
  return res > a;
 return res < a;
}

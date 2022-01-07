
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static int field_cmp(u64 field_a, u64 field_b)
{
 if (field_a > field_b)
  return 1;
 if (field_a < field_b)
  return -1;
 return 0;
}

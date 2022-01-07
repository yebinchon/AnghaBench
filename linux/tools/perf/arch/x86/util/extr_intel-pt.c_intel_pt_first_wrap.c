
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static bool intel_pt_first_wrap(u64 *data, size_t buf_size)
{
 int i, a, b;

 b = buf_size >> 3;
 a = b - 512;
 if (a < 0)
  a = 0;

 for (i = a; i < b; i++) {
  if (data[i])
   return 1;
 }

 return 0;
}

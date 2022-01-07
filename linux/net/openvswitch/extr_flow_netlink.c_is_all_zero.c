
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static bool is_all_zero(const u8 *fp, size_t size)
{
 int i;

 if (!fp)
  return 0;

 for (i = 0; i < size; i++)
  if (fp[i])
   return 0;

 return 1;
}

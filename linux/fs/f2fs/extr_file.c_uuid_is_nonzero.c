
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u8 ;



__attribute__((used)) static bool uuid_is_nonzero(__u8 u[16])
{
 int i;

 for (i = 0; i < 16; i++)
  if (u[i])
   return 1;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool validate_masked(u8 *data, int len)
{
 u8 *mask = data + len;

 while (len--)
  if (*data++ & ~*mask++)
   return 0;

 return 1;
}

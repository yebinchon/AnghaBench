
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;



__attribute__((used)) static void mrp_attrvalue_inc(void *value, u8 len)
{
 u8 *v = (u8 *)value;




 while (len > 0 && !++v[--len])
  ;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static inline size_t eir_get_length(u8 *eir, size_t eir_len)
{
 size_t parsed = 0;

 while (parsed < eir_len) {
  u8 field_len = eir[0];

  if (field_len == 0)
   return parsed;

  parsed += field_len + 1;
  eir += field_len + 1;
 }

 return eir_len;
}

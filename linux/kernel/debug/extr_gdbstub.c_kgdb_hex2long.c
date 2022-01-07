
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex_to_bin (char) ;

int kgdb_hex2long(char **ptr, unsigned long *long_val)
{
 int hex_val;
 int num = 0;
 int negate = 0;

 *long_val = 0;

 if (**ptr == '-') {
  negate = 1;
  (*ptr)++;
 }
 while (**ptr) {
  hex_val = hex_to_bin(**ptr);
  if (hex_val < 0)
   break;

  *long_val = (*long_val << 4) | hex_val;
  num++;
  (*ptr)++;
 }

 if (negate)
  *long_val = -*long_val;

 return num;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (char) ;
 int isspace (char) ;

int is_printable_array(char *p, unsigned int len)
{
 unsigned int i;

 if (!p || !len || p[len - 1] != 0)
  return 0;

 len--;

 for (i = 0; i < len; i++) {
  if (!isprint(p[i]) && !isspace(p[i]))
   return 0;
 }
 return 1;
}

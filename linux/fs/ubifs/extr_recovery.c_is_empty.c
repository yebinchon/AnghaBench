
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int is_empty(void *buf, int len)
{
 uint8_t *p = buf;
 int i;

 for (i = 0; i < len; i++)
  if (*p++ != 0xff)
   return 0;
 return 1;
}

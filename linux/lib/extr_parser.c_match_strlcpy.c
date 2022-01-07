
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t to; size_t from; } ;
typedef TYPE_1__ substring_t ;


 int memcpy (char*,size_t,size_t) ;

size_t match_strlcpy(char *dest, const substring_t *src, size_t size)
{
 size_t ret = src->to - src->from;

 if (size) {
  size_t len = ret >= size ? size - 1 : ret;
  memcpy(dest, src->from, len);
  dest[len] = '\0';
 }
 return ret;
}

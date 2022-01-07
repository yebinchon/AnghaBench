
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int strcmp (char const*,char const*) ;

int match_string(const char * const *array, size_t n, const char *string)
{
 int index;
 const char *item;

 for (index = 0; index < n; index++) {
  item = array[index];
  if (!item)
   break;
  if (!strcmp(item, string))
   return index;
 }

 return -EINVAL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ sysfs_streq (char const*,char const*) ;

int __sysfs_match_string(const char * const *array, size_t n, const char *str)
{
 const char *item;
 int index;

 for (index = 0; index < n; index++) {
  item = array[index];
  if (!item)
   break;
  if (sysfs_streq(item, str))
   return index;
 }

 return -EINVAL;
}

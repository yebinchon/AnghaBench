
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int is_descending(const char *str)
{
 if (!str)
  return 0;

 if (strcmp(str, "descending") == 0)
  return 1;

 if (strcmp(str, "ascending") == 0)
  return 0;

 return -EINVAL;
}

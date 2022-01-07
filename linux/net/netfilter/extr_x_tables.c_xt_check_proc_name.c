
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 unsigned int strnlen (char const*,unsigned int) ;

int xt_check_proc_name(const char *name, unsigned int size)
{
 if (name[0] == '\0')
  return -EINVAL;

 if (strnlen(name, size) == size)
  return -ENAMETOOLONG;

 if (strcmp(name, ".") == 0 ||
     strcmp(name, "..") == 0 ||
     strchr(name, '/'))
  return -EINVAL;

 return 0;
}

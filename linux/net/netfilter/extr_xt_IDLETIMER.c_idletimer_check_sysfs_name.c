
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int strcmp (char const*,char*) ;
 int xt_check_proc_name (char const*,unsigned int) ;

__attribute__((used)) static int idletimer_check_sysfs_name(const char *name, unsigned int size)
{
 int ret;

 ret = xt_check_proc_name(name, size);
 if (ret < 0)
  return ret;

 if (!strcmp(name, "power") ||
     !strcmp(name, "subsystem") ||
     !strcmp(name, "uevent"))
  return -EINVAL;

 return 0;
}

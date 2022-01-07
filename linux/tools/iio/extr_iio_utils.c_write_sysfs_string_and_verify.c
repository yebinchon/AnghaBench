
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _write_sysfs_string (char const*,char const*,char const*,int) ;

int write_sysfs_string_and_verify(const char *filename, const char *basedir,
      const char *val)
{
 return _write_sysfs_string(filename, basedir, val, 1);
}

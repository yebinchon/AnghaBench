
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _write_sysfs_int (char const*,char const*,int,int) ;

int write_sysfs_int_and_verify(const char *filename, const char *basedir,
          int val)
{
 return _write_sysfs_int(filename, basedir, val, 1);
}

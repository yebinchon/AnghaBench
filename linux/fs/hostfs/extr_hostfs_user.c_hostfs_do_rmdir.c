
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int rmdir (char const*) ;

int hostfs_do_rmdir(const char *file)
{
 int err;

 err = rmdir(file);
 if (err)
  return -errno;
 return 0;
}

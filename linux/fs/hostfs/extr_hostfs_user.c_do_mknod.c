
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int mknod (char const*,int,int ) ;
 int os_makedev (unsigned int,unsigned int) ;

int do_mknod(const char *file, int mode, unsigned int major, unsigned int minor)
{
 int err;

 err = mknod(file, mode, os_makedev(major, minor));
 if (err)
  return -errno;
 return 0;
}

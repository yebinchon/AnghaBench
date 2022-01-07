
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;
 int EINVAL ;
 int ENOSYS ;
 int SYS_renameat2 ;
 int errno ;
 int syscall (int ,int ,char*,int ,char*,unsigned int) ;

int rename2_file(char *from, char *to, unsigned int flags)
{
 int err;
 err = syscall(316, AT_FDCWD, from, AT_FDCWD, to, flags);
 if (err < 0) {
  if (errno != ENOSYS)
   return -errno;
  else
   return -EINVAL;
 }
 return 0;



}

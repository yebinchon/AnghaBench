
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBUSY ;
 scalar_t__ EINVAL ;
 unsigned int FIFREEZE ;
 unsigned int FITHAW ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ errno ;
 int ioctl (int,unsigned int,int ) ;
 int open (char*,int ) ;

__attribute__((used)) static int vss_do_freeze(char *dir, unsigned int cmd)
{
 int ret, fd = open(dir, O_RDONLY);

 if (fd < 0)
  return 1;

 ret = ioctl(fd, cmd, 0);
 if (ret) {
  if ((cmd == FIFREEZE && errno == EBUSY) ||
      (cmd == FITHAW && errno == EINVAL)) {
   close(fd);
   return 0;
  }
 }

 close(fd);
 return !!ret;
}

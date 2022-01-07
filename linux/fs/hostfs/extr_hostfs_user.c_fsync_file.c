
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fdatasync (int) ;
 int fsync (int) ;

int fsync_file(int fd, int datasync)
{
 int ret;
 if (datasync)
  ret = fdatasync(fd);
 else
  ret = fsync(fd);

 if (ret < 0)
  return -errno;
 return 0;
}

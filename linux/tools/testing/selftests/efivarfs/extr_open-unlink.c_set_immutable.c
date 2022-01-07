
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FS_IMMUTABLE_FL ;
 int FS_IOC_GETFLAGS ;
 int FS_IOC_SETFLAGS ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int ioctl (int,int ,unsigned int*) ;
 int open (char const*,int ) ;

__attribute__((used)) static int set_immutable(const char *path, int immutable)
{
 unsigned int flags;
 int fd;
 int rc;
 int error;

 fd = open(path, O_RDONLY);
 if (fd < 0)
  return fd;

 rc = ioctl(fd, FS_IOC_GETFLAGS, &flags);
 if (rc < 0) {
  error = errno;
  close(fd);
  errno = error;
  return rc;
 }

 if (immutable)
  flags |= FS_IMMUTABLE_FL;
 else
  flags &= ~FS_IMMUTABLE_FL;

 rc = ioctl(fd, FS_IOC_SETFLAGS, &flags);
 error = errno;
 close(fd);
 errno = error;
 return rc;
}

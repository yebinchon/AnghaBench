
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {scalar_t__ file; } ;


 int EBADF ;
 struct fd fdget (unsigned int) ;
 int fdput (struct fd) ;
 int vfs_fsync (scalar_t__,int) ;

__attribute__((used)) static int do_fsync(unsigned int fd, int datasync)
{
 struct fd f = fdget(fd);
 int ret = -EBADF;

 if (f.file) {
  ret = vfs_fsync(f.file, datasync);
  fdput(f);
 }
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {scalar_t__ file; } ;
typedef int loff_t ;


 int EBADF ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int sync_file_range (scalar_t__,int ,int ,unsigned int) ;

int ksys_sync_file_range(int fd, loff_t offset, loff_t nbytes,
    unsigned int flags)
{
 int ret;
 struct fd f;

 ret = -EBADF;
 f = fdget(fd);
 if (f.file)
  ret = sync_file_range(f.file, offset, nbytes, flags);

 fdput(f);
 return ret;
}

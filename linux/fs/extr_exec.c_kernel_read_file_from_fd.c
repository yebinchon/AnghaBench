
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int file; } ;
typedef int loff_t ;
typedef enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;


 int EBADF ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int kernel_read_file (int ,void**,int *,int ,int) ;

int kernel_read_file_from_fd(int fd, void **buf, loff_t *size, loff_t max_size,
        enum kernel_read_file_id id)
{
 struct fd f = fdget(fd);
 int ret = -EBADF;

 if (!f.file)
  goto out;

 ret = kernel_read_file(f.file, buf, size, max_size, id);
out:
 fdput(f);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;
typedef enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_RDONLY ;
 int PTR_ERR (struct file*) ;
 struct file* filp_open (char const*,int ,int ) ;
 int fput (struct file*) ;
 int kernel_read_file (struct file*,void**,int *,int ,int) ;

int kernel_read_file_from_path(const char *path, void **buf, loff_t *size,
          loff_t max_size, enum kernel_read_file_id id)
{
 struct file *file;
 int ret;

 if (!path || !*path)
  return -EINVAL;

 file = filp_open(path, O_RDONLY, 0);
 if (IS_ERR(file))
  return PTR_ERR(file);

 ret = kernel_read_file(file, buf, size, max_size, id);
 fput(file);
 return ret;
}

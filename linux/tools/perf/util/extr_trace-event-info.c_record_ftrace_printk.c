
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 char* get_tracing_file (char*) ;
 int output_fd ;
 int pr_debug (char*) ;
 int put_tracing_file (char*) ;
 int record_file (char*,int) ;
 int stat (char*,struct stat*) ;
 int write (int ,unsigned int*,int) ;

__attribute__((used)) static int record_ftrace_printk(void)
{
 unsigned int size;
 char *path;
 struct stat st;
 int ret, err = 0;

 path = get_tracing_file("printk_formats");
 if (!path) {
  pr_debug("can't get tracing/printk_formats");
  return -ENOMEM;
 }

 ret = stat(path, &st);
 if (ret < 0) {

  size = 0;
  if (write(output_fd, &size, 4) != 4)
   err = -EIO;
  goto out;
 }
 err = record_file(path, 4);

out:
 put_tracing_file(path);
 return err;
}

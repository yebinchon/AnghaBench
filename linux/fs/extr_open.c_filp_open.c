
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct filename {int dummy; } ;
struct file {int dummy; } ;


 struct file* ERR_CAST (struct filename*) ;
 int IS_ERR (struct filename*) ;
 struct file* file_open_name (struct filename*,int,int ) ;
 struct filename* getname_kernel (char const*) ;
 int putname (struct filename*) ;

struct file *filp_open(const char *filename, int flags, umode_t mode)
{
 struct filename *name = getname_kernel(filename);
 struct file *file = ERR_CAST(name);

 if (!IS_ERR(name)) {
  file = file_open_name(name, flags, mode);
  putname(name);
 }
 return file;
}

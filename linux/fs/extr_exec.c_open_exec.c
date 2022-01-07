
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filename {int dummy; } ;
struct file {int dummy; } ;


 int AT_FDCWD ;
 struct file* ERR_CAST (struct filename*) ;
 int IS_ERR (struct filename*) ;
 struct file* do_open_execat (int ,struct filename*,int ) ;
 struct filename* getname_kernel (char const*) ;
 int putname (struct filename*) ;

struct file *open_exec(const char *name)
{
 struct filename *filename = getname_kernel(name);
 struct file *f = ERR_CAST(filename);

 if (!IS_ERR(filename)) {
  f = do_open_execat(AT_FDCWD, filename, 0);
  putname(filename);
 }
 return f;
}

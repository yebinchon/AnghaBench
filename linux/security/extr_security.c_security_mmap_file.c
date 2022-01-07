
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int call_int_hook (int ,int ,struct file*,unsigned long,int ,unsigned long) ;
 int ima_file_mmap (struct file*,unsigned long) ;
 int mmap_file ;
 int mmap_prot (struct file*,unsigned long) ;

int security_mmap_file(struct file *file, unsigned long prot,
   unsigned long flags)
{
 int ret;
 ret = call_int_hook(mmap_file, 0, file, prot,
     mmap_prot(file, prot), flags);
 if (ret)
  return ret;
 return ima_file_mmap(file, prot);
}

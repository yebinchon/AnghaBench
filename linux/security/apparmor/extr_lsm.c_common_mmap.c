
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int AA_EXEC_MMAP ;
 unsigned long MAP_PRIVATE ;
 int MAY_READ ;
 int MAY_WRITE ;
 unsigned long PROT_EXEC ;
 unsigned long PROT_READ ;
 unsigned long PROT_WRITE ;
 int common_file_perm (char const*,struct file*,int) ;
 int file_ctx (struct file*) ;

__attribute__((used)) static int common_mmap(const char *op, struct file *file, unsigned long prot,
         unsigned long flags)
{
 int mask = 0;

 if (!file || !file_ctx(file))
  return 0;

 if (prot & PROT_READ)
  mask |= MAY_READ;




 if ((prot & PROT_WRITE) && !(flags & MAP_PRIVATE))
  mask |= MAY_WRITE;
 if (prot & PROT_EXEC)
  mask |= AA_EXEC_MMAP;

 return common_file_perm(op, file, mask);
}

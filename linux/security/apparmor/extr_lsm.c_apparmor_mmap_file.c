
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int OP_FMMAP ;
 int common_mmap (int ,struct file*,unsigned long,unsigned long) ;

__attribute__((used)) static int apparmor_mmap_file(struct file *file, unsigned long reqprot,
         unsigned long prot, unsigned long flags)
{
 return common_mmap(OP_FMMAP, file, prot, flags);
}

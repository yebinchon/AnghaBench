
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int call_int_hook (int ,int ,struct vm_area_struct*,unsigned long,unsigned long) ;
 int file_mprotect ;

int security_file_mprotect(struct vm_area_struct *vma, unsigned long reqprot,
       unsigned long prot)
{
 return call_int_hook(file_mprotect, 0, vma, reqprot, prot);
}
